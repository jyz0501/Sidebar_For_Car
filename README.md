# Sidebar_For_Car

一款面向 **Android 车机** 的悬浮侧边栏应用（基于原 `com.hzsoft.sidebar` 改包名、适配 Android 11+ 的二次构建工程）。

侧边栏常驻屏幕边缘，从边缘滑动即可呼出，内置应用抽屉、最近任务、亮度/旋转/Wi-Fi/手电筒等快捷开关。

## 工程结构

```
Sidebar_For_Car/
├── app/                      # apktool 反编译工程（可回编译）
│   ├── AndroidManifest.xml
│   ├── apktool.yml
│   ├── res/                  # 资源（布局 / 图片 / 动画 / 字符串）
│   └── smali/                # 反编译字节码（含 com.qianxian.sidebar 与底层浮窗库 com.hzsoft.standout）
├── src/                      # 注入的 Java 兼容层源码（编译后合并进 classes.dex）
│   └── com/qianxian/sidebar/
│       ├── Compat.java           # 悬浮窗类型 / 前台服务 / 通知 / 权限兼容
│       ├── ConfigReceiver.java   # adb 批量导出/导入配置（Broadcast）
│       └── ConfigTransferActivity.java # 配置迁移（SAF，无 DocumentsUI 时回退）
├── build.sh                  # 构建工作流（见下）
├── fix_arsc.py               # 将 resources.arsc 改为 STORED（Android 11 要求）
├── .github/workflows/
│   └── build.yml             # GitHub Actions CI（推送/手动触发自动构建）
└── sign/                     # 自签名 keystore 存放处（自动生成，已 gitignore）
```

## 适配要点（相对原版）

- **包名** 改为 `com.qianxian.sidebar`。
- **Android 11 兼容**：`TYPE_APPLICATION_OVERLAY` 悬浮窗类型、前台服务 + 通知渠道、`WRITE_SETTINGS` 走系统设置页、包可见性 `<queries>`。
- **权限收敛**：仅保留必要权限（悬浮窗、修改系统设置、前台服务、开机自启、振动、Wi-Fi、清理进程、存储写入仅限旧系统用于 Download 目录）；移除了 `CAMERA` 与 `GET_TASKS`。不再启动即自动弹权限页，由用户在系统设置中手动授予。
- **去引导层**：去掉原版启动时的操作引导浮层，打开直接进入设置页。

## 构建

### 环境要求

- JDK 8（`javac` / `java` / `keytool`）
- Android SDK：`platforms/android-30`、`build-tools/36.0.0`
- `apktool` 2.12.x（或设置 `APKTOOL` 环境变量指向 jar）
- Python 3（用于 `fix_arsc.py`）

可用环境变量覆盖路径：`ANDROID_HOME`、`JAVA`、`JAVAC`、`APKTOOL`。

### 步骤

```bash
chmod +x build.sh
./build.sh
```

脚本会：

1. 编译 `src/` 兼容层并转为 `classes.dex`；
2. 用 apktool 回编译 `app/`；
3. 将兼容层 dex 合并进主 `classes.dex`；
4. 将 `resources.arsc` 改为不压缩（Android 11 对 targetSdk 30 的硬性要求）；
5. `zipalign` 对齐；
6. **自签名**：若 `sign/release.keystore` 不存在则调用 `keytool` 自动生成（别名 `siderbar`，有效期 10000 天），并以 V1+V2 签名（关闭 V3）。

产物：`dist/Sidebar_For_Car_v1.2.1_b4.apk`（文件名格式为 `应用名_v{versionName}_b{versionCode}.apk`，由 `build.sh` 自动生成）。

> 自签名证书仅用于调试/内部分发。正式发布请替换为自有密钥，并妥善保管 `sign/release.keystore`（已加入 `.gitignore`，不会进入版本库）。

## CI（GitHub Actions）

`.github/workflows/build.yml` 在 push 到 `main`/`master`、打 `v*` 标签或手动触发时自动构建，APK 作为 Artifact 上传。

- CI 使用 Temurin JDK 17 + `sdkmanager` 安装 `platforms;android-30` / `build-tools;36.0.0`，apktool 固定 2.12.1。
- 签名密钥默认不入库：CI 未配置密钥时自动生成临时自签名证书（与本地签名不兼容，覆盖安装需先卸载）。
- 若需 CI 产物与本地签名一致，把本地 `sign/release.keystore` 做 base64 后配置到仓库 Secret `SIDEBAR_KEYSTORE_BASE64` 即可：

  ```bash
  base64 -i sign/release.keystore | pbcopy
  ```

## 安装与权限

```bash
adb install -r dist/Sidebar_For_Car_v1.2.1_b4.apk
adb shell am start -n com.qianxian.sidebar/.MainActivity
```

首次使用需在系统「设置 → 应用 → 侧边栏」中手动授予 **悬浮窗（在其他应用上层显示）** 与 **修改系统设置** 权限，否则悬浮窗会静默不显示。

## 版本

- `versionName: 1.2.1`，`versionCode: 4`，`minSdk 23`，`targetSdk 30`。
