#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [node/java]" >&2
  exit 1
fi

LANG=$1

if [ "$LANG" = "node" ]; then
  echo "node client/updateCounter.js counter1"
  node client/updateCounter.js counter1
  echo "node client/updateCounter.js counter2"
  node client/updateCounter.js counter2
elif [ "$LANG" = "java" ]; then
  echo "java client/UpdateCounter counter1"
  java client/UpdateCounter counter1
  echo "java client/UpdateCounter counter2"
  java client/UpdateCounter counter2
fi
