#!/usr/bin/env bash

set -euo pipefail
mc --version
mc alias set deploy $MINIO_ENDPOINT $MINIO_ACCESS_KEY $MINIO_SECRET_KEY --api S3v4

mc cp $1 "deploy/$2"

echo "link=${mc download "deploy/$2/$3"}" >> $GITHUB_OUTPUT