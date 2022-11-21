#!/bin/sh

curl -F document=@"$FILE_PATH" $TG_URL/sendDocument?chat_id=$DEV_CHAT_ID?disable_notification=$SILENT