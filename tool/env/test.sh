#!/bin/sh
cd ../../
source ./tool/env/export.sh

source ./tool/env/envs/prod.env
#source ./tool/env/envs/dev.env
#source ./tool/env/envs/stage.env

source ./tool/env/envs/repo.env

cd ios
fastlane distribute_to_testflight

