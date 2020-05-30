#!/bin/bash
curl localhost:10026/v2/entities?options=upsert -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "id": "331:Kitchen",
  "type": "Room",
  "temperature": {
    "value": 24.5,
    "type": "Number"
  },
  "pressure": {
    "value": 710,
    "type": "Number"
  }
}
EOF