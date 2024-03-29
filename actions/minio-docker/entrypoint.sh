#!/usr/bin/env bash

mc --version
mc alias set deploy $MINIO_ENDPOINT $MINIO_ACCESS_KEY $MINIO_SECRET_KEY --api S3v4

mc cp $1 "deploy/$2/$3"

echo "link=$(mc share download "deploy/$2/$3" | grep -o 'Share: .*' | grep -o 'http.*' | jq --slurp --raw-input --raw-output @uri)" >> $GITHUB_OUTPUT