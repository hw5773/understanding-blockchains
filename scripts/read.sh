#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

cd $APPLICATION
if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/application/readCounter.js counter1"
  node ${ROOT}/application/readCounter.js counter1
  echo "node ${ROOT}/application/readCounter.js counter2"
  node ${ROOT}/application/readCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java ${ROOT}/application/ReadCounter counter1"
  java ${ROOT}/application/ReadCounter counter1
  echo "java ${ROOT}/application/ReadCounter counter2"
  java ${ROOT}/application/ReadCounter counter2
fi
