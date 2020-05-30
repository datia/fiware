#!/bin/bash
curl localhost:10026/v2/entities/331:Lobby/attrs/temperature -s -v -S \
    --header 'Content-Type: application/json' \
    -X PUT -d @- <<EOF
{
  "value": 31,
  "type": "Number"
}
EOF