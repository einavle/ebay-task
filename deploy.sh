#!/bin/bash

docker compose up &
RET_CODE=0

while [[ ${RET_CODE} != "200" ]]; do
 sleep 3
 RET_CODE=$(curl -I http://admin:admin@localhost:3000/api/dashboards 2>/dev/null | head -n 1 | cut -d$' ' -f2)
done

echo Deploying datasource...
 ./upload-ds.sh
echo Deploying deshboards...
 ./upload-panel.sh
