#!/bin/bash
set -e


if [ ! -z "$2" ]
then
  echo "Changing dir to $2"
  cd $2
fi

if [ "$1" == "npm" ]; then
  echo "Using NPM to install dependencies"
  $1 install
  $1  un build
  rm -rf node_modules
  $1 install --production
else
  echo "Using YARN to install dependencies"
  $1 install
  $1 run build
  rm -rf node_modules
  $1 install --production
fi