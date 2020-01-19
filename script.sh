#!/bin/sh
number=$RANDOM
value=$(($number % 2))

echo "number: $number"
if [[ $(($number % 2)) -eq 0 ]]; then
  exit 0
else
  sleep 5
  exit 1
fi
