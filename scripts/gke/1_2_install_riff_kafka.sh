#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "-------------------------------------"
echo "Installing riff, zookeper and Kafka"
echo "-------------------------------------"
echo " "

exe helm install --name transport --namespace riff-system projectriff/kafka \
--version 0.0.2

exe helm install projectriff/riff --name control --namespace riff-system \
--version 0.0.5
