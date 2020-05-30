#!/bin/bash
curl localhost:10026/v2/entities/331:Lobby/attrs -s -v -S \
    --header 'Content-Type: application/json' \
    -X PATCH -d @- <<EOF
{
  "temperature": {
    "value": 26,
    "type": "Number"
  },
  "pressure": {
    "value": 725,
    "type": "Number"
  }
}
EOF