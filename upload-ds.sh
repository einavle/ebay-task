#!/bin/bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data @datasource.json \
  http://admin:admin@http://34.69.204.54:3000/api/datasources
