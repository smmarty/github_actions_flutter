#!/bin/sh

# Rename
SOURCE_APK1=build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
TARGET_APK1=build/app/outputs/flutter-apk/$APK_RESULT_PREFIX-arm64-v8a-release.apk
TARGET_APK1=build/app/apk/${flavor}/app-${flavor}-${build_type}.apk

mv -f $SOURCE_APK1 $TARGET_APK1