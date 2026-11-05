package com.qianxian.sidebar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 * 无界面搬运入口，便于 adb 批量部署：
 *
 * <pre>
 * adb shell am broadcast -n com.qianxian.sidebar/.ConfigReceiver --es mode export
 * adb shell am broadcast -n com.qianxian.sidebar/.ConfigReceiver --es mode import
 * </pre>
 *
 * 配置文件位于设备 Download 目录：/sdcard/Download/sidebar_config.xml
 * （Download 写入不可用时回退应用私有目录 /sdcard/Android/data/com.qianxian.sidebar/files/）
 */
public class ConfigReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context c, Intent i) {
        String mode = i.getStringExtra("mode");
        try {
            if ("import".equals(mode)) {
                InputStream is = Compat.openDownloadConfig(c);
                String src = "/sdcard/Download/" + Compat.CONFIG_FILE_NAME;
                if (is == null) {
                    File f = Compat.configFile(c);
                    if (!f.exists()) {
                        toast(c, "未找到配置文件：" + src);
                        return;
                    }
                    is = new java.io.FileInputStream(f);
                    src = f.getAbsolutePath();
                }
                int n = Compat.restoreConfig(c, is);
                is.close();
                toast(c, "已从 " + src + " 导入 " + n + " 项配置");
            } else {
                byte[] data = Compat.dumpConfig(c);
                String path = Compat.exportToDownload(c, data);
                if (path == null) {
                    File f = Compat.configFile(c);
                    FileOutputStream fos = new FileOutputStream(f);
                    fos.write(data);
                    fos.close();
                    path = f.getAbsolutePath();
                }
                toast(c, "已导出：" + path);
            }
        } catch (Throwable t) {
            t.printStackTrace();
            toast(c, "操作失败：" + t.getMessage());
        }
    }

    private void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
}
