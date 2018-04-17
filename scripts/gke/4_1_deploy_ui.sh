#!/bin/bash

exe() { echo "\$ $@" ; "$@" ; }

echo " "
echo "---------------------"
echo "Deploying UI   "
echo "---------------------"
echo " "
echo "==> Building 'UI' container image"
echo " "

exe docker build -t gtantachuco/riff-demo-ui:0.1.0 ui
exe docker push gtantachuco/riff-demo-ui:0.1.0

echo " "
echo "==> Applying RBAC, service and deployment"
echo " "

exe kubectl apply -f ui/gke-rbac/ui-rbac.yaml
exe kubectl apply -f ui/gke-rbac/ui-service.yaml
exe kubectl apply -f ui/gke-rbac/ui-deployment.yaml
