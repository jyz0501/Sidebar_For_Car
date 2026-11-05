package com.qianxian.sidebar;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * 配置迁移入口：透明 Activity。
 * 导出固定写到设备 Download 目录（/sdcard/Download/sidebar_config.xml），
 * 非直连模式额外提供系统文件选择器（SAF）另存，默认定位到 Download；
 * 导入优先读 Download，再回退应用私有外部目录的备份文件。
 * 车机等裁剪掉 DocumentsUI 的设备自动回退到上述固定文件。
 */
public class ConfigTransferActivity extends Activity {

    static final String EXTRA_MODE = "mode";
    static final String EXTRA_DIRECT = "direct";
    static final String MODE_EXPORT = "export";
    static final String MODE_IMPORT = "import";

    private static final int REQ_EXPORT = 11;
    private static final int REQ_IMPORT = 12;
    private static final int REQ_PERM_STORAGE = 13;

    private static final String PERM_STORAGE = "android.permission.WRITE_EXTERNAL_STORAGE";
    private static final String EXTRA_INITIAL_URI = "android.provider.extra.INITIAL_URI";

    private boolean mDefaultSaved;
    private String mDownloadPath;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // API 23~28 直接写公共 Download 目录需要存储权限，先申请；29+ 走 MediaStore 不需要
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT < 29
                && !Compat.hasPermission(this, PERM_STORAGE)) {
            try {
                requestPermissions(new String[]{PERM_STORAGE}, REQ_PERM_STORAGE);
                return; // 授权回调里继续
            } catch (Throwable t) {
                t.printStackTrace();
            }
        }
        handle(getIntent());
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions,
            int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == REQ_PERM_STORAGE) {
            handle(getIntent());
        }
    }

    private void handle(Intent intent) {
        boolean direct = intent.getBooleanExtra(EXTRA_DIRECT, false);
        if (MODE_IMPORT.equals(intent.getStringExtra(EXTRA_MODE))) {
            if (direct) {
                importFromDefault();
            } else {
                openPicker();
            }
        } else {
            byte[] data = saveDefault();
            if (data != null) {
                mDownloadPath = Compat.exportToDownload(this, data);
            }
            if (direct) {
                if (mDownloadPath != null) {
                    toast("已导出到 Download：" + mDownloadPath);
                } else if (mDefaultSaved) {
                    toast("Download 写入失败，已导出："
                            + Compat.configFile(this).getAbsolutePath());
                } else {
                    toast("导出失败，无法写入存储");
                }
                finish();
            } else {
                saveAs();
            }
        }
    }

    /** 先把配置无条件写一份到应用私有外部目录兜底，保证任何设备上都能拿到 */
    private byte[] saveDefault() {
        try {
            byte[] data = Compat.dumpConfig(this);
            File f = Compat.configFile(this);
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(data);
            fos.close();
            mDefaultSaved = true;
            return data;
        } catch (Throwable t) {
            t.printStackTrace();
            return null;
        }
    }

    /** 让用户另存到 U 盘等任意位置，文件选择器默认定位到 Download 目录 */
    private void saveAs() {
        try {
            Intent i = new Intent(Intent.ACTION_CREATE_DOCUMENT);
            i.addCategory(Intent.CATEGORY_OPENABLE);
            i.setType("text/xml");
            i.putExtra(Intent.EXTRA_TITLE, Compat.CONFIG_FILE_NAME);
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    i.putExtra(EXTRA_INITIAL_URI,
                            android.provider.MediaStore.Downloads.EXTERNAL_CONTENT_URI);
                } catch (Throwable ignored) {
                }
            }
            startActivityForResult(i, REQ_EXPORT);
        } catch (Throwable t) {
            t.printStackTrace();
            // 没有 DocumentsUI：直接报告 Download 目录的导出结果
            toast(mDownloadPath != null
                    ? "已导出到 Download：" + mDownloadPath
                    : (mDefaultSaved
                            ? "导出失败，备份：" + Compat.configFile(this).getAbsolutePath()
                            : "导出失败，无法写入存储"));
            finish();
        }
    }

    private void openPicker() {
        try {
            Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            i.addCategory(Intent.CATEGORY_OPENABLE);
            i.setType("*/*");
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    i.putExtra(EXTRA_INITIAL_URI,
                            android.provider.MediaStore.Downloads.EXTERNAL_CONTENT_URI);
                } catch (Throwable ignored) {
                }
            }
            startActivityForResult(i, REQ_IMPORT);
        } catch (Throwable t) {
            importFromDefault();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == REQ_EXPORT) {
            if (resultCode == RESULT_OK && data != null && data.getData() != null) {
                try {
                    OutputStream os = getContentResolver().openOutputStream(data.getData());
                    os.write(Compat.dumpConfig(this));
                    os.close();
                    toast(mDownloadPath != null
                            ? "已导出到所选位置\nDownload：" + mDownloadPath
                            : "已导出到所选位置");
                } catch (Throwable t) {
                    t.printStackTrace();
                    toast(mDownloadPath != null
                            ? "另存失败，Download：" + mDownloadPath
                            : "另存失败");
                }
            } else {
                toast(mDownloadPath != null
                        ? "已导出到 Download：" + mDownloadPath
                        : (mDefaultSaved
                                ? "已导出：" + Compat.configFile(this).getAbsolutePath()
                                : "导出已取消"));
            }
            finish();
            return;
        }

        if (requestCode == REQ_IMPORT) {
            if (resultCode == RESULT_OK && data != null && data.getData() != null
                    && doImport(data.getData())) {
                finish();
                return;
            }
            importFromDefault();
        }
    }

    private boolean doImport(Uri uri) {
        try {
            InputStream is = getContentResolver().openInputStream(uri);
            int n = Compat.restoreConfig(this, is);
            is.close();
            toast("已导入 " + n + " 项配置，重新打开侧边栏或重启应用后生效");
            return true;
        } catch (Throwable t) {
            t.printStackTrace();
            toast("导入失败：不是有效的侧边栏配置文件");
            return false;
        }
    }

    /** 没有 DocumentsUI 或用户取消选文件时的兜底：优先读 Download，再读私有目录备份 */
    private void importFromDefault() {
        InputStream is = null;
        String src = null;
        try {
            is = Compat.openDownloadConfig(this);
            if (is != null) {
                src = "/sdcard/Download/" + Compat.CONFIG_FILE_NAME;
            } else {
                File f = Compat.configFile(this);
                if (f.exists()) {
                    is = new FileInputStream(f);
                    src = f.getAbsolutePath();
                }
            }
            if (is != null) {
                int n = Compat.restoreConfig(this, is);
                is.close();
                toast("已从 " + src + " 导入 " + n + " 项配置，重新打开侧边栏或重启应用后生效");
            } else {
                toast("未找到配置文件。请先导出，或把 " + Compat.CONFIG_FILE_NAME
                        + " 放到\n/sdcard/Download/");
            }
        } catch (Throwable t) {
            t.printStackTrace();
            toast("导入失败：" + t.getMessage());
        }
        finish();
    }

    private void toast(String msg) {
        try {
            Toast.makeText(getApplicationContext(), msg, Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
}
