#!/bin/bash

if [ $1 = "get" ]
then
  cat $3 | jq ".$2" | cut -d "\"" -f 2
else
  if [ $1 = "set" ]
  then
    tmp=$(mktemp)
    jq ".$2=$3" $4 > "$tmp" && mv "$tmp" $4
  fi
fi