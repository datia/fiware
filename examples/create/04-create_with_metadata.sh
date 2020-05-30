#!/bin/bash
curl localhost:10026/v2/entities?options=upsert -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "id": "331:Bathroom",
  "type": "Room",
  "temperature": {
    "value": 24.5,
    "type": "Number",
    "metadata": 
    {
      "date": 
      {
        "type": "String",
        "value": "2020-05-05T12:00:00.00Z"
      }
    }
  },
  "pressure": {
    "value": 710,
    "type": "Number"
  }
}
EOF