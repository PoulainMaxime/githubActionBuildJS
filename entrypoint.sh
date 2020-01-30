#!/bin/bash
set -e

if [ ! -z "$2" ]
then
  echo "Changing dir to $2"
  cd $2
fi

echo "Using $1 to install dependencies"
$1 install
$1 run build
rm -rf node_modules
$1 install --production