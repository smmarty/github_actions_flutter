#!/bin/sh
# --batch to prevent interactive command
# --yes to assume "yes" for questions
# Encrypted by
# gpg --symmetric --cipher-algo AES256 android_keys.zip
gpg --quiet --batch --yes --decrypt --passphrase="$ANDROID_KEYS_SECRET_PASSPHRASE" \
--output android/android_keys.zip ${ANDROID_KEYS_PATH} && cd android && jar xvf android_keys.zip && cd -