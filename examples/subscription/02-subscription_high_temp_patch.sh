#!/bin/bash
curl localhost:10026/v2/subscriptions/5eb97e19ffee3f2e49ea7dce -v -s -S --header 'Content-Type: application/json' \
    -X PATCH -d @- <<EOF
{
  "description": "A simple example to get high temperature info on 331:Lobby sensor",
  "subject": {
    "entities": [
      {
        "id": "331:Lobby",
        "type": "Room"
      }
    ],
    "condition": {
      "attrs": [
        "temperature"
      ],
      "expression": {"q": "temperature>60"}
    }
  },
  "notification": {
    "http": {
      "url": "http://client:8081/temperature/highalert"
    },
    "attrs": [
      "temperature"
    ]
  },
  "expires": "2021-01-01T11:00:00.00Z",
  "throttling": 5
}
EOF