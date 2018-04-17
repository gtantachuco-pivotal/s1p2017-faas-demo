#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "---------------------"
echo "Applying functions   "
echo "---------------------"
echo " "
echo "==> 'Voter Counter' function"
echo " "
riff apply -f functions/vote-counter/

echo " "
echo "==> 'Redis Writer' function"
echo " "
riff apply -f functions/redis-writer/

echo " "
echo "==> 'Vote Stream Processor' function"
echo " "
riff apply -f functions/vote-stream-processor/
