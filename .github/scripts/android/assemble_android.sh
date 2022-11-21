#!/bin/sh

result_target=$BUILD_TARGET
if [[ -z "$result_target" ]]
then
 result_target=lib/targets/${BUILD_FLAVOR}.dart
fi

mode="$(tr -s "[:upper:]" "[:lower:]" <<<$BUILD_MODE)"

echo -n "Build flavor:"$BUILD_FLAVOR"  type:"$BUILD_TYPE" target $result_target mode $mode"
flutter build  $BUILD_TYPE -t $result_target --flavor $BUILD_FLAVOR --$mode