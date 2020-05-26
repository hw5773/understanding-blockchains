#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1
ROOT=${PWD}/..

if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/client/updateCounter.js counter1"
  node ${ROOT}/client/updateCounter.js counter1
  echo "node ${ROOT}/client/updateCounter.js counter2"
  node ${ROOT}/client/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java ${ROOT}/client/UpdateCounter counter1"
  java ${ROOT}/client/UpdateCounter counter1
  echo "java ${ROOT}/client/UpdateCounter counter2"
  java ${ROOT}/client/UpdateCounter counter2
fi
