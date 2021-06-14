#!/bin/bash

ADDR=http://192.168.1.1
USERNAME="useradmin"
PASSWORD="" # add
COOKIE=/tmp/cookie.txt

curl '${ADDR}/cgi-bin/luci' \
 -H 'Upgrade-Insecure-Requests: 1' \
 -H 'Origin: http://192.168.1.1' \
 -H 'Content-Type: application/x-www-form-urlencoded' \
 -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36' \
 -H 'Referer: ${ADDR}/cgi-bin/luci' \
 --data-raw 'username=${username}&psd=$pasword{}' \
 --cookie-jar ${COOKIE} > /dev/null

curl '${ADDR}/cgi-bin/luci/admin/settings/gwinfo?get=part' --cookie ${COOKIE} | awk -F "\"" '{print $16}' 
