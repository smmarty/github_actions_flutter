#!/bin/sh

curl -s -X POST $TG_URL/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE" -d disable_notification=$SILENT