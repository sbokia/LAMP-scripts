#!/bin/sh

RESTART="/sbin/service httpd restart"
# replace with your restart command

STATUSCODE=$(curl --write-out '%{http_code}' --silent --output /dev/null https://your/health/check/url)
if [ $STATUSCODE  != 200 ]; then
$RESTART
fi
