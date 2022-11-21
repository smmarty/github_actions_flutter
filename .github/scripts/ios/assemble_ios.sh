#!/bin/sh

result_target=$BUILD_TARGET
if [[ -z "$result_target" ]]
then
 result_target=lib/targets/${BUILD_FLAVOR}.dart
fi

mode="$(tr -s "[:upper:]" "[:lower:]" <<<$BUILD_MODE)"

echo -n "Build flavor:"$BUILD_FLAVOR" target $result_target mode $mode"
flutter build ios --flavor $BUILD_FLAVOR -t $result_target --$mode --no-codesign