#!/bin/bash

docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=<password>" \
-v splunk_etc:/opt/splunk/etc \
-v splunk_var:/opt/splunk/var \
--name splunk splunk/splunk:latest

echo "starting splunk @ localhost:8000"
echo "username: admin"
echo "password: <password>"
