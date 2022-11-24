#!/bin/sh

# BUILD
export BUILD_FLAVOR=prod # prod/dev/stage
export BUILD_MODE=release # release/profile/dev
export IPA_FILE_PATH=./Runner.ipa
export CONFIGURATION=prodRelease
export WORKSPACE="Runner.xcworkspace"
export SCHEME=$BUILD_FLAVOR



