#!/bin/bash
# 侧边栏（车机版 / Siderbar_For_Car）构建脚本
# 流程：注入兼容层 -> 回编译 -> 合并 dex -> resources.arsc 改 STORED -> 对齐 -> 自签名(V1+V2)
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"

# ---- 工具链（可用环境变量覆盖，未设置则回退到本机常见路径）----
ANDROID_HOME="${ANDROID_HOME:-$HOME/Library/Android/sdk}"
ANDROID_JAR="$ANDROID_HOME/platforms/android-30/android.jar"
BT="$ANDROID_HOME/build-tools/36.0.0"
JAVA="${JAVA:-/usr/bin/java}"
JAVAC="${JAVAC:-/usr/bin/javac}"

# apktool：优先使用 Homebrew 安装的 jar（直接用系统 java 调用，避免 brew 包装脚本依赖缺失的 openjdk）
# 也可通过环境变量 APKTOOL 指定（命令或 jar 路径均可）
if [ -n "${APKTOOL:-}" ]; then
  APK_CMD=("$APKTOOL")
else
  APK_JAR="$(ls /opt/homebrew/Cellar/apktool/*/libexec/apktool_*.jar 2>/dev/null | head -1)"
  if [ -n "$APK_JAR" ]; then
    APK_CMD=("$JAVA" -jar "$APK_JAR")
  elif command -v apktool >/dev/null 2>&1; then
    APK_CMD=(apktool)
  else
    echo "错误：未找到 apktool，请安装 apktool 或设置 APKTOOL 环境变量" >&2
    exit 1
  fi
fi

# ---- 自签名 keystore（首次构建自动生成，密钥不入库）----
KS="$ROOT/sign/release.keystore"
KS_ALIAS="siderbar"
KS_PASS="siderbar"

cd "$ROOT"
rm -rf out helperdex dexmerge
mkdir -p out helperdex dexmerge "$ROOT/dist"

# 1. 编译兼容层（Java 8，兼容 minSdk 21）
"$JAVAC" -nowarn -source 8 -target 8 -bootclasspath "$ANDROID_JAR" \
  -d out src/com/qianxian/siderbar/*.java

# 2. 兼容层 -> classes.dex
"$JAVA" -cp "$BT/lib/d8.jar" com.android.tools.r8.D8 \
  --lib "$ANDROID_JAR" --min-api 21 --output helperdex $(find out -name '*.class')

# 3. 回编译 APK
"${APK_CMD[@]}" b app -o unsigned.apk

# 4. 把兼容层 dex 合并进主 classes.dex
rm -rf dexmerge && mkdir -p dexmerge/old dexmerge/new
unzip -o -j unsigned.apk classes.dex -d dexmerge/old > /dev/null
"$JAVA" -cp "$BT/lib/d8.jar" com.android.tools.r8.D8 \
  --lib "$ANDROID_JAR" --min-api 21 --output dexmerge/new \
  dexmerge/old/classes.dex helperdex/classes.dex
zip -q -d unsigned.apk classes.dex
zip -q -j -g unsigned.apk dexmerge/new/classes.dex

# 4b. resources.arsc 必须 STORED（Android 11+ 对 targetSdk 30 的要求）
python3 fix_arsc.py unsigned.apk unsigned_fixed.apk

# 5. 对齐 + 自签名（V1+V2，关闭 V3）
"$BT/zipalign" -f 4 unsigned.apk aligned.apk

if [ ! -f "$KS" ]; then
  echo "未找到 keystore，生成自签名证书: $KS"
  mkdir -p "$(dirname "$KS")"
  keytool -genkeypair -v -keystore "$KS" -keyalg RSA -keysize 2048 -validity 10000 \
    -alias "$KS_ALIAS" -storepass "$KS_PASS" -keypass "$KS_PASS" \
    -dname "CN=Siderbar For Car, OU=Dev, O=Qianxian, L=Shenzhen, ST=GD, C=CN"
fi

# ---- 构造输出文件名（应用名 + 版本号，不含安卓版本/签名信息）----
VER=$(grep -oE 'versionName:[[:space:]]*\S+' app/apktool.yml | head -1 | sed 's/.*:[[:space:]]*//')
VCODE=$(grep -oE 'versionCode:[[:space:]]*[0-9]+' app/apktool.yml | head -1 | grep -oE '[0-9]+')
OUT_NAME="Siderbar_For_Car_v${VER}.apk"
# 清理旧命名产物与 adb 安装残留的 .idsig（均不入库），避免 dist/ 里残留多份
rm -f "$ROOT/dist"/侧边栏*.apk "$ROOT/dist"/Siderbar_For_Car_v*_android*.apk "$ROOT/dist"/*.idsig

sign_apk() {
  "$JAVA" -jar "$BT/lib/apksigner.jar" sign \
    --ks "$KS" --ks-key-alias "$KS_ALIAS" \
    --ks-pass "pass:$KS_PASS" --key-pass "pass:$KS_PASS" \
    --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled false \
    --v4-signing-enabled false \
    --out "$2" "$1"
}
sign_apk aligned.apk "$ROOT/dist/$OUT_NAME"

"$JAVA" -jar "$BT/lib/apksigner.jar" verify -v "$ROOT/dist/$OUT_NAME" | grep -E "Verifies|v1 scheme|v2 scheme"
echo "构建完成 -> $ROOT/dist/$OUT_NAME (versionName=$VER versionCode=$VCODE 签名:V1+V2 自签名)"

