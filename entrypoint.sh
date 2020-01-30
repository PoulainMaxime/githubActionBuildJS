#!/bin/bash
set -e


if [ -z $2 ]; then
  if [ "$1" == "npm" ]; then
    echo "Using NPM in $2 to install dependencies"
    $1 install
    $1 run build
    rm -rf $2/node_modules
    $1 install --production
  else
    echo "Using YARN in $2 to install dependencies"
    $1 install
    $1 run build
    rm -rf $2/node_modules
    $1 install --production
  fi
fi

if [ "$1" == "npm" ]; then
  echo "Using NPM to install dependencies"
  $1 --prefix $2/ install
  $1 --prefix $2/ run build
  rm -rf $2/node_modules
  $1 install --production
else
  echo "Using YARN to install dependencies"
  $1 --cwd $2/ install
  $1 --cwd $2/ run build
  rm -rf $2/node_modules
  $1 install --production
fi