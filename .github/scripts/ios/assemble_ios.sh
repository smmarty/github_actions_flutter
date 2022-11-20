#!/bin/sh

result_target=$BUILD_TARGET
if [[ -z "$result_target" ]]
then
 result_target=lib/targets/${BUILD_FLAVOR}.dart
fi

echo -n "Build flavor:"$BUILD_FLAVOR" target $result_target mode $BUILD_MODE"
#flutter build ios -t $result_target --$BUILD_MODE --no-codesign --flavor $BUILD_FLAVOR
flutter build ios -t $result_target --$BUILD_MODE --no-codesign