package com.qianxian.sidebar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
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
 * 文件固定为 /sdcard/Android/data/com.qianxian.sidebar/files/sidebar_config.xml
 */
public class ConfigReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context c, Intent i) {
        String mode = i.getStringExtra("mode");
        File f = Compat.configFile(c);
        try {
            if ("import".equals(mode)) {
                InputStream is = new FileInputStream(f);
                int n = Compat.restoreConfig(c, is);
                is.close();
                toast(c, "已导入 " + n + " 项配置：" + f.getAbsolutePath());
            } else {
                byte[] data = Compat.dumpConfig(c);
                FileOutputStream fos = new FileOutputStream(f);
                fos.write(data);
                fos.close();
                toast(c, "已导出：" + f.getAbsolutePath());
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
