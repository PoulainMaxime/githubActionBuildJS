#!/bin/sh -l


if [ -z $2 ]; then
  $1 install --production
  $1 run build
fi

$1 --prefix $2/ install --production
$1 --prefix $2/ run build