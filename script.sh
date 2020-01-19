#!/bin/sh
number=$RANDOM
value=$(($number % 2))
sleep 10

echo "number: $number"
if [[ $(($number % 2)) -eq 0 ]]; then
  sleep 10
  exit 0
else
  exit 1
fi
