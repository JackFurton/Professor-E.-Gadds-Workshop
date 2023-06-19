#!/bin/bash

docker run --name nifi -p 8443:8443 \
-e SINGLE_USER_CREDENTIALS_USERNAME=admin \
-e SINGLE_USER_CREDENTIALS_PASSWORD=ctsBtRBKHRAx69EqUghvvgEvjnaLjFEB \
-v nifi_conf:/opt/nifi/nifi-current/conf \
-v nifi_state:/opt/nifi/nifi-current/state \
-v nifi_database:/opt/nifi/nifi-current/database_repository \
-v nifi_flowfile:/opt/nifi/nifi-current/flowfile_repository \
-v nifi_content:/opt/nifi/nifi-current/content_repository \
-v nifi_provenance:/opt/nifi/nifi-current/provenance_repository \
-d apache/nifi:latest

echo "starting nifi @ https://localhost:8443/nifi"
echo "user:admin"
echo "password:ctsBtRBKHRAx69EqUghvvgEvjnaLjFEB"

