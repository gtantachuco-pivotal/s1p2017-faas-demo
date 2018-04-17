#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "-------------------------------------"
echo "Installing Redis                     "
echo "-------------------------------------"
echo " "

# exe helm install -n counters stable/redis --set persistence.enabled=false

exe helm install -n counters https://storage.googleapis.com/kubernetes-charts/redis-1.2.0.tgz \
   --set persistence.enabled=false
