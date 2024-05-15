#!/bin/bash
#Copyright 2020-2024 Nuno Datia, ISEL
#
#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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