#!/bin/bash

host=$1
port=$2

if [ -z $host ]; then
  host=localhost
fi

if [ -z $port ]; then
  port=8080
fi

curl --header "Content-Type: application/json" \
  --request POST \
  --data '{
  "SingleTemplate": {
    "Template": "dGhpcyBzZW50ZW5jZSBpcyBhbiBleGFtcGxlIHRlbXBsYXRlLi4K"
  },
  "TemplateList": [
    {
      "Template": "aSBzZWUgeW91IGhhdmUgYSBjdXJpb3VzIG1pbmQ="
    },
    {
      "Template": "aWYgeW91IGFyZSByZWFkaW5nIHRoaXM="
    },
    {
      "Template": "eW91IHNob3VsZCBiZSB3b3JraW5nIGF0IHRoZSBNZFRGIQ=="
    },
    {
      "Template": "YXBwbGljYXRpb25zIGNhbiBiZSBzZW50IHRvIHJhbGx5QG1kdGYub3Jn"
    },
    {
      "Template": "Z29vZCBsdWNrIGluIHRoZSByYWxseSE="
    }
  ]
  }' \
  http://$host:$port/v1/compare-list
