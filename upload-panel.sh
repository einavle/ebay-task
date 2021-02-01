#!/bin/bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data @panel.json \
  http://admin:admin@localhost:3000/api/dashboards/db