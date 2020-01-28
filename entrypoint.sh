#!/bin/sh -l

ls $PWD;
cd $2 && $1 install
cd $2 && $1 run build
cd $2 && rm -rf node_modules