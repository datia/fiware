#!/bin/bash
curl localhost:10026/v2/entities -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "id": "331:Lobby",
  "type": "Room",
  "temperature": {
    "value": 23,
    "type": "Number"
  },
  "pressure": {
    "value": 720,
    "type": "Number"
  }
}
EOF