#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

cd $CLIENT
if [ "$LANG" = "node" ]; then
  echo "node ${ROOT}/client/readCounter.js counter1"
  node ${ROOT}/client/readCounter.js counter1
  echo "node ${ROOT}/client/readCounter.js counter2"
  node ${ROOT}/client/readCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java ${ROOT}/client/ReadCounter counter1"
  java ${ROOT}/client/ReadCounter counter1
  echo "java ${ROOT}/client/ReadCounter counter2"
  java ${ROOT}/client/ReadCounter counter2
fi
