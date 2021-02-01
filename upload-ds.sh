#!/bin/bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data @datasource.json \
  http://admin:admin@localhost:3000/api/datasources