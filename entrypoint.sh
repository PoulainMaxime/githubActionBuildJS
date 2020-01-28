#!/bin/sh -l


if [ -z $2 ]; then
  $1 install
  $1 run build
  rm -rf node_modules
fi

$1 --prefix $2 install
$1 --prefix $2 run build
rm -rf $2/node_modules