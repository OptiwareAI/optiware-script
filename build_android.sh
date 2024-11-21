#!/usr/bin/env bash
# Android packing script

# Script to fail when any command returns error
set -e

# Preparing apk
export PATH=/usr/local/android-sdk/build-tools/25.0.2/:$PATH
export ORI_NAME=android.apk
export APK_NAME=output/android-dev-${TRAVIS_TAG}.apk
wget --output-document=${ORI_NAME} ${TRIME_LINK}

# Downloading IME files
mkdir -p assets/opw
export opw_direct=assets/opw
curl -fsSL | bash -s -- ${TRIME_PACKAGES}
cp .ci/default.custom.yaml $opw

# add IME files
aapt add ${ORI_NAME} $opw/*
aapt remove ${ORI_NAME} $opw/opencc/*
aapt add ${ORI_NAME} $opw/opencc/*
echo Finished adding files, check:
aapt list ${ORI_NAME}

# Zip-align to 32-bit
zipalign -v 4 ${ORI_NAME} ${APK_NAME}

# Sign apk
export KEYPASS=$( openssl rand -base64 12 )
export STOREPASS=$( openssl rand -base64 12 )

keytool -genkey -alias key \
    -keyalg RSA -keystore keystore.jks \
    -dname "CN=tanxpyox, OU=RimeCantonese, O=Optiware, L=SikSyuTong, S=Ware, C=ZungJyun" \
    -storepass ${STOREPASS} -keypass ${KEYPASS}

apksigner sign --ks keystore.jks --ks-pass pass:${STOREPASS} --key-pass pass:${KEYPASS} ${APK_NAME}
