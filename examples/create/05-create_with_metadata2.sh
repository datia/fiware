#!/bin/bash
curl localhost:10026/v2/entities?options=upsert -v -s -S --header 'Content-Type: application/json' \
    -X POST -d @- <<EOF
{
  "id": "331:Kitchen",
  "type": "Room",
  "temperature": {
    "value": 25,
    "type": "Number",
    "metadata": 
    {
      "date": 
      {
        "type": "String",
        "value": "2020-05-06T12:10:00.00Z"
      }
    }
  },
  "pressure": {
    "value": 711,
    "type": "Number"
  }
}
EOF