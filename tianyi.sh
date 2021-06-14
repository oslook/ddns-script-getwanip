#!/bin/bash

curl 'http://192.168.1.1/cgi-bin/luci' \
 -H 'Upgrade-Insecure-Requests: 1' \
 -H 'Origin: http://192.168.1.1' \
 -H 'Content-Type: application/x-www-form-urlencoded' \
 -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36' \
 -H 'Referer: http://192.168.1.1/cgi-bin/luci' \
 --data-raw 'username=useradmin&psd=zmn4e' \
 --cookie-jar cookie.txt > /dev/null
#curl -i 'http://192.168.1.1/cgi-bin/luci' --cookie cookie.txt

curl 'http://192.168.1.1/cgi-bin/luci/admin/settings/gwinfo?get=part' --cookie cookie.txt | awk -F "\"" '{print $16}' 
