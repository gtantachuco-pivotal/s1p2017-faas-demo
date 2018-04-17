#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "------------------------------"
echo "Installing riff invokers      "
echo "------------------------------"
echo " "

echo " "
echo "==> Installing 'Java' function invoker    "
echo " "
exe riff invokers apply -f https://github.com/projectriff/java-function-invoker/raw/v0.0.5-sr.1/java-invoker.yaml

echo " "
echo "==> Installing 'NodeJS' function invoker    "
echo " "
exe riff invokers apply -f https://github.com/projectriff/node-function-invoker/raw/v0.0.6/node-invoker.yaml
