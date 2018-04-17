#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "------------------------------"
echo "Adding riff charts to Helm"
echo "------------------------------"
echo " "
exe helm repo add projectriff https://riff-charts.storage.googleapis.com
exe helm repo update

echo " "
echo "------------------------------"
echo "Creating Helm's tiller account"
echo "------------------------------"
echo " "
exe kubectl -n kube-system create serviceaccount tiller
exe kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller

echo " "
echo "------------------------------"
echo "Initializing Helm"
echo "------------------------------"
echo " "
exe helm init --service-account=tiller
