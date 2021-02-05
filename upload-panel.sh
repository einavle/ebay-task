#!/bin/bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data @panel.json \
  http://admin:admin@34.69.204.54:3000/api/dashboards/db
