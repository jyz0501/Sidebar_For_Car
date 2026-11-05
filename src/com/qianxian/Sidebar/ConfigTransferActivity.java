package com.qianxian.Sidebar;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * 配置迁移入口：透明 Activity，负责用系统文件选择器（SAF）导出/导入配置文件。
 * 车机等裁剪掉 DocumentsUI 的设备会自动回退到应用私有外部目录下的固定文件。
 */
public class ConfigTransferActivity extends Activity {

    static final String EXTRA_MODE = "mode";
    static final String EXTRA_DIRECT = "direct";
    static final String MODE_EXPORT = "export";
    static final String MODE_IMPORT = "import";

    private static final int REQ_EXPORT = 11;
    private static final int REQ_IMPORT = 12;

    private boolean mDefaultSaved;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        boolean direct = getIntent().getBooleanExtra(EXTRA_DIRECT, false);
        if (MODE_IMPORT.equals(getIntent().getStringExtra(EXTRA_MODE))) {
            if (direct) {
                importFromDefault();
            } else {
                openPicker();
            }
        } else {
            saveDefault();
            if (direct) {
                toast(mDefaultSaved
                        ? "已导出：" + Compat.configFile(this).getAbsolutePath()
                        : "导出失败，无法写入存储");
                finish();
            } else {
                saveAs();
            }
        }
    }

    /** 先把配置无条件写一份到应用私有外部目录，保证任何设备上都能拿到 */
    private void saveDefault() {
        try {
            byte[] data = Compat.dumpConfig(this);
            File f = Compat.configFile(this);
            FileOutputStream fos = new FileOutputStream(f);
            fos.write(data);
            fos.close();
            mDefaultSaved = true;
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /** 再让用户另存到 U 盘 / 下载目录等任意位置 */
    private void saveAs() {
        try {
            Intent i = new Intent(Intent.ACTION_CREATE_DOCUMENT);
            i.addCategory(Intent.CATEGORY_OPENABLE);
            i.setType("text/xml");
            i.putExtra(Intent.EXTRA_TITLE, "侧边栏配置.xml");
            startActivityForResult(i, REQ_EXPORT);
        } catch (Throwable t) {
            toast(mDefaultSaved
                    ? "已导出：" + Compat.configFile(this).getAbsolutePath()
                    : "导出失败，无法写入存储");
            finish();
        }
    }

    private void openPicker() {
        try {
            Intent i = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            i.addCategory(Intent.CATEGORY_OPENABLE);
            i.setType("*/*");
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
                    toast("已导出到所选位置\n备份：" + Compat.configFile(this).getAbsolutePath());
                } catch (Throwable t) {
                    t.printStackTrace();
                    toast("另存失败，已备份：" + Compat.configFile(this).getAbsolutePath());
                }
            } else {
                toast(mDefaultSaved
                        ? "已导出：" + Compat.configFile(this).getAbsolutePath()
                        : "导出已取消");
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

    /** 没有 DocumentsUI 或用户取消选文件时的兜底：读固定路径 */
    private void importFromDefault() {
        File f = Compat.configFile(this);
        if (f.exists()) {
            try {
                InputStream is = new FileInputStream(f);
                int n = Compat.restoreConfig(this, is);
                is.close();
                toast("已从 " + f.getAbsolutePath() + " 导入 " + n
                        + " 项配置，重启应用后生效");
            } catch (Throwable t) {
                t.printStackTrace();
                toast("导入失败：" + t.getMessage());
            }
        } else {
            toast("未找到配置文件。请先导出，或把 侧边栏配置.xml 放到\n" + f.getParent());
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
