#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "---------------------------------------------"
echo "Building Java project: Vote Stream Processor "
echo "---------------------------------------------"
echo " "
exe pushd functions/vote-stream-processor ; ./mvnw -DskipTests clean package ; popd

echo " "
echo "------------------------------------------------"
echo "Building and pushing function's container images"
echo "------------------------------------------------"
echo " "
echo "==> 'Voter Counter' function image"
echo " "
exe riff build --push -f functions/vote-counter/ -v 0.1.0 -u gtantachuco

echo " "
echo "==> 'Redis Writer' function image"
echo " "
exe riff build --push -f functions/redis-writer/ -v 0.1.0 -u gtantachuco

echo " "
echo "==> 'Vote Stream Processor' function image"
echo " "
exe riff build --push -f functions/vote-stream-processor/ -v 0.1.0 -u gtantachuco
