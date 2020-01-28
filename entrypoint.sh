#!/bin/sh -l

cd $2 && $1 install && $1 run build && rm -rf node_modules
