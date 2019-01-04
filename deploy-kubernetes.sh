#!/bin/bash

#kubectl delete --all deployments
#kubectl delete --all services

sleep 15

echo 'Configure Book API'
kubectl apply -f k8s
echo '----------------------------------------------------------------------------'

echo 'Applied k8s schemas'
echo 'Waiting........'
echo '----------------------------------------------------------------------------'
sleep 15
kubectl get pods
echo '----------------------------------------------------------------------------'