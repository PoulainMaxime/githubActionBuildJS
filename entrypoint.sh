#!/bin/sh -l

echo "Hello $1"
cd $2 && $1 install
cd $2 && $1 run build
cd $2 && rm -rf node_modules