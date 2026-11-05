package com.qianxian.Sidebar;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.widget.Toast;

/**
 * Android 11 (API 30) 兼容层，由 smali 直接调用。
 */
public final class Compat {

    private static final int REQ_OVERLAY = 9001;
    private static final int REQ_WRITE_SETTINGS = 9002;
    private static final int REQ_PERMISSIONS = 9003;

    private static final String CHANNEL_ID = "sidebar_channel";
    private static final String PREF_ASK_WRITE_SETTINGS = "compat_ask_write_settings";

    private static final String CLS_STANDOUT = "com.hzsoft.standout.StandOutWindow";
    private static final String CLS_SWIPE = "com.hzsoft.sidebar.SwipeDetector";
    private static final String CLS_SIDEBAR = "com.hzsoft.sidebar.Sidebar";

    private static boolean sRequesting;
    private static boolean sOverlayRequested;

    private Compat() {
    }

    /* ---------------- 悬浮窗 ---------------- */

    /** TYPE_APPLICATION_OVERLAY (O+) / TYPE_PHONE (旧版本) */
    public static int overlayWindowType() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2002;
    }

    public static boolean canDrawOverlays(Context c) {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(c);
    }

    /* ---------------- 权限 ---------------- */

    public static boolean canWriteSettings(Context c) {
        return Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(c);
    }

    public static boolean hasPermission(Context c, String permission) {
        return Build.VERSION.SDK_INT < 23
                || c.checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED;
    }

    /** 正在等待用户授权，宿主 Activity 此时不要 finish */
    public static boolean requesting() {
        return sRequesting;
    }

    /**
     * 检查/准备启动环境。
     *
     * 权限（悬浮窗、修改系统设置）已在 Manifest 声明；按需求不再自动弹窗申请，
     * 由用户在系统设置中手动授予。缺少权限时悬浮窗会静默失败（被 show() 的
     * try/catch 兜住），不会导致崩溃或黑屏。
     *
     * @return 恒为 true，保证应用正常进入（启动服务 / 打开设置页）
     */
    public static boolean check(Activity a) {
        android.util.Log.d("SBCompat", "check: overlay=" + canDrawOverlays(a)
                + " write=" + canWriteSettings(a));
        return true;
    }

    /** 授权页面返回后回调 */
    public static void onRequestResult(Activity a) {
        android.util.Log.d("SBCompat", "onRequestResult");
        sRequesting = false;
        if (check(a)) {
            showWindows(a);
            a.finish();
        }
    }

    /* ---------------- 启动悬浮窗 ---------------- */

    public static void showWindows(Context c) {
        show(c, CLS_SWIPE, 0);
        show(c, CLS_SIDEBAR, 1);
    }

    /** 开机自启：只拉起手势检测窗口，避免开机即弹出侧边栏 */
    public static void bootStart(Context c) {
        if (!canDrawOverlays(c)) {
            return;
        }
        show(c, CLS_SWIPE, 0);
    }

    private static void show(Context c, String serviceName, int id) {
        try {
            Class<?> standOut = Class.forName(CLS_STANDOUT);
            Class<?> service = Class.forName(serviceName);
            java.lang.reflect.Method m =
                    standOut.getMethod("c", Context.class, Class.class, int.class);
            m.invoke(null, c, service, Integer.valueOf(id));
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /* ---------------- 服务 ---------------- */

    /** Android 8+ 必须使用 startForegroundService 启动后台服务 */
    public static void startServiceCompat(Context c, Intent i) {
        android.util.Log.d("SBCompat", "startService " + i.getComponent() + " " + i.getAction());
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                c.startForegroundService(i);
            } else {
                c.startService(i);
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /** startForegroundService 后必须在 5 秒内调用 startForeground */
    public static void ensureForeground(Service s) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            Notification n = buildNotification(s, s.getApplicationInfo().icon,
                    "侧边栏", "侧边栏服务正在运行", null);
            s.startForeground(1, n);
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /* ---------------- 通知 ---------------- */

    public static Notification buildNotification(Context c, int icon, CharSequence title,
            CharSequence text, PendingIntent pi) {
        Notification.Builder b;
        if (Build.VERSION.SDK_INT >= 26) {
            createChannel(c);
            b = new Notification.Builder(c, CHANNEL_ID);
        } else {
            b = new Notification.Builder(c);
        }
        b.setSmallIcon(icon);
        if (title != null) {
            b.setTicker(title);
            b.setContentTitle(title);
        }
        if (text != null) {
            b.setContentText(text);
        }
        if (pi != null) {
            b.setContentIntent(pi);
        }
        b.setWhen(System.currentTimeMillis());
        b.setOngoing(true);
        return b.build();
    }

    private static void createChannel(Context c) {
        NotificationManager nm =
                (NotificationManager) c.getSystemService(Context.NOTIFICATION_SERVICE);
        if (nm == null || nm.getNotificationChannel(CHANNEL_ID) != null) {
            return;
        }
        NotificationChannel ch =
                new NotificationChannel(CHANNEL_ID, "侧边栏", NotificationManager.IMPORTANCE_LOW);
        ch.setDescription("侧边栏正在运行");
        nm.createNotificationChannel(ch);
    }

    /* ---------------- 其它 ---------------- */

    /** Android 10+ 第三方应用无法直接开关 Wi-Fi，改为打开系统 Wi-Fi 面板 */
    public static boolean setWifiEnabledCompat(Context c, boolean enable) {
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                Intent i = new Intent(Settings.Panel.ACTION_WIFI);
                i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                c.startActivity(i);
                return true;
            } catch (Throwable t) {
                t.printStackTrace();
                return false;
            }
        }
        WifiManager wm = (WifiManager) c.getApplicationContext()
                .getSystemService(Context.WIFI_SERVICE);
        return wm != null && wm.setWifiEnabled(enable);
    }

    private static void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_LONG).show();
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    /* ---------------- 配置导出 / 导入 ---------------- */

    private static final String CONFIG_FILE_NAME = "sidebar_config.xml";

    /** 设置页「导出配置」按钮 */
    public static void exportConfig(Activity a) {
        startTransfer(a, ConfigTransferActivity.MODE_EXPORT);
    }

    /** 设置页「导入配置」按钮 */
    public static void importConfig(Activity a) {
        startTransfer(a, ConfigTransferActivity.MODE_IMPORT);
    }

    private static void startTransfer(Activity a, String mode) {
        try {
            Intent i = new Intent(a, ConfigTransferActivity.class);
            i.putExtra(ConfigTransferActivity.EXTRA_MODE, mode);
            a.startActivity(i);
        } catch (Throwable t) {
            t.printStackTrace();
            toast(a, "无法打开配置迁移页面");
        }
    }

    /**
     * 默认配置文件：/sdcard/Android/data/包名/files/sidebar_config.xml
     * 应用私有外部目录，读写不需要任何存储权限，adb 与文件管理器都能访问。
     */
    public static java.io.File configFile(Context c) {
        java.io.File dir = c.getExternalFilesDir(null);
        if (dir == null) {
            dir = c.getFilesDir();
        }
        return new java.io.File(dir, CONFIG_FILE_NAME);
    }

    /** 把当前全部 SharedPreferences 序列化成系统原生 SP XML 格式的字节 */
    public static byte[] dumpConfig(Context c) throws java.io.IOException {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(c);
        java.io.ByteArrayOutputStream bos = new java.io.ByteArrayOutputStream();
        org.xmlpull.v1.XmlSerializer x = android.util.Xml.newSerializer();
        x.setOutput(bos, "utf-8");
        x.startDocument("utf-8", Boolean.TRUE);
        x.startTag(null, "map");
        for (java.util.Map.Entry<String, ?> e : sp.getAll().entrySet()) {
            String k = e.getKey();
            Object v = e.getValue();
            if (v == null || k == null) {
                continue;
            }
            if (v instanceof String) {
                x.startTag(null, "string");
                x.attribute(null, "name", k);
                x.text((String) v);
                x.endTag(null, "string");
            } else if (v instanceof Boolean) {
                writeValueTag(x, "boolean", k, v.toString());
            } else if (v instanceof Integer) {
                writeValueTag(x, "int", k, v.toString());
            } else if (v instanceof Long) {
                writeValueTag(x, "long", k, v.toString());
            } else if (v instanceof Float) {
                writeValueTag(x, "float", k, v.toString());
            } else if (v instanceof java.util.Set) {
                x.startTag(null, "set");
                x.attribute(null, "name", k);
                for (Object item : (java.util.Set<?>) v) {
                    x.startTag(null, "string");
                    x.text(String.valueOf(item));
                    x.endTag(null, "string");
                }
                x.endTag(null, "set");
            }
        }
        x.endTag(null, "map");
        x.endDocument();
        x.flush();
        return bos.toByteArray();
    }

    private static void writeValueTag(org.xmlpull.v1.XmlSerializer x, String tag,
            String name, String value) throws java.io.IOException {
        x.startTag(null, tag);
        x.attribute(null, "name", name);
        x.attribute(null, "value", value);
        x.endTag(null, tag);
    }

    /**
     * 解析 dumpConfig 生成的 XML，全量写回 SharedPreferences 并同步提交。
     *
     * @return 成功写入的键值条数
     */
    public static int restoreConfig(Context c, java.io.InputStream in) throws Exception {
        SharedPreferences.Editor ed = PreferenceManager.getDefaultSharedPreferences(c).edit();
        org.xmlpull.v1.XmlPullParser p = android.util.Xml.newPullParser();
        p.setInput(in, "utf-8");

        int count = 0;
        int event = p.getEventType();
        String currentName = null;
        StringBuilder text = new StringBuilder();
        java.util.HashSet<String> setBuf = null;
        boolean inSet = false;

        while (event != org.xmlpull.v1.XmlPullParser.END_DOCUMENT) {
            if (event == org.xmlpull.v1.XmlPullParser.START_TAG) {
                String tag = p.getName();
                text.setLength(0);
                if ("string".equals(tag) && inSet) {
                    // <set> 内的 <string> 没有 name 属性，作为集合元素
                } else if ("set".equals(tag)) {
                    currentName = p.getAttributeValue(null, "name");
                    inSet = true;
                    setBuf = new java.util.HashSet<String>();
                } else if (!"map".equals(tag)) {
                    currentName = p.getAttributeValue(null, "name");
                    String value = p.getAttributeValue(null, "value");
                    if (currentName != null && value != null) {
                        putValue(ed, tag, currentName, value);
                        count++;
                    }
                }
            } else if (event == org.xmlpull.v1.XmlPullParser.TEXT) {
                if (p.getText() != null) {
                    text.append(p.getText());
                }
            } else if (event == org.xmlpull.v1.XmlPullParser.END_TAG) {
                String tag = p.getName();
                if ("string".equals(tag)) {
                    if (inSet) {
                        if (setBuf != null) {
                            setBuf.add(text.toString());
                        }
                    } else if (currentName != null) {
                        ed.putString(currentName, text.toString());
                        count++;
                    }
                } else if ("set".equals(tag)) {
                    if (currentName != null && setBuf != null) {
                        ed.putStringSet(currentName, setBuf);
                        count++;
                    }
                    inSet = false;
                    setBuf = null;
                }
            }
            event = p.next();
        }
        ed.commit();
        return count;
    }

    private static void putValue(SharedPreferences.Editor ed, String tag,
            String key, String value) {
        try {
            if ("boolean".equals(tag)) {
                ed.putBoolean(key, Boolean.parseBoolean(value));
            } else if ("int".equals(tag)) {
                ed.putInt(key, Integer.parseInt(value));
            } else if ("long".equals(tag)) {
                ed.putLong(key, Long.parseLong(value));
            } else if ("float".equals(tag)) {
                ed.putFloat(key, Float.parseFloat(value));
            } else {
                ed.putString(key, value);
            }
        } catch (NumberFormatException ignored) {
            // 数值损坏时跳过该项，不影响其它配置
        }
    }
}
