#!/bin/sh

result_target=$BUILD_TARGET
if [[ -z "$result_target" ]]
then
 result_target=lib/targets/${BUILD_FLAVOR}.dart
fi
echo -n "Build flavor:"$BUILD_FLAVOR"  type:"$BUILD_TYPE" target $result_target mode $BUILD_MODE"
flutter build  $BUILD_TYPE -t $result_target --flavor $BUILD_FLAVOR --$BUILD_MODE