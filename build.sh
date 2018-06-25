#!/bin/bash
INAME="ykaaouachi/php"
TAGS="5.6-fpm 7-fpm"
mkdir -p logs
for T in $TAGS; do
  echo -n "Building ${INAME}:${T}... "
  CONTAINER=$(docker build --no-cache --rm -t ${INAME}:$T -f Dockerfile.$T . > logs/$T.log 2>&1)
  echo $CONTAINER
done
