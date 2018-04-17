#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "-------------------------------------"
echo "Installing riff, zookeper and Kafka"
echo "-------------------------------------"
echo " "

exe helm install --name transport --namespace riff-system projectriff/kafka \
--version 0.0.5

exe helm install projectriff/riff --name control --namespace riff-system \
--version 0.0.5


exe helm install projectriff/riff \
  --name projectriff \
  --namespace riff-system \
  --set kafka.create=true \
  --version 0.0.5
