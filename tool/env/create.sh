#!/bin/sh

cd ../../

gh secret set -e prod -f tool/env/envs/prod.env
gh secret set -e stage -f tool/env/envs/stage.env
gh secret set -e dev -f tool/env/envs/dev.env
gh secret set -f tool/env/envs/repo.env
