#!/bin/bash

CHAT_ID=''
TOKEN=''

telegram_func () {
https_proxy="http://0.0.0.0:00" curl --silent -X POST --retry 1 --retry-delay 0 --retry-max-time 60 --data-urlencode "chat_id=${CHAT_ID}" --data-urlencode "text=This is a test message" "https://api.telegram.org/bot${TOKEN}/sendMessage?disable_web_page_preview=true" | grep -q '"ok":true'
}

