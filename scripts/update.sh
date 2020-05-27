#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

cd $APPLICATION
if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/application/updateCounter.js counter1"
  node ${ROOT}/application/updateCounter.js counter1
  echo "node ${ROOT}/application/updateCounter.js counter2"
  node ${ROOT}/application/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java ${ROOT}/application/UpdateCounter counter1"
  java ${ROOT}/application/UpdateCounter counter1
  echo "java ${ROOT}/application/UpdateCounter counter2"
  java ${ROOT}/application/UpdateCounter counter2
fi
