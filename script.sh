#!/bin/sh
number=$RANDOM
value=$(($number % 2))

echo "number: $number"
if [[ $(($number % 2)) == 0 ]]; then
  exit 0
else
  exit 1
fi
