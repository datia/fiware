#!/bin/bash
curl localhost:10026/v2/entities/331:Lobby/attrs -s -v -S \
    --header 'Content-Type: application/json' \
    -X PATCH -d @- <<EOF
{
  "temperature": {
    "value": 19,
    "type": "Number"
  },
  "pressure": {
    "value": 720,
    "type": "Number"
  }
}
EOF