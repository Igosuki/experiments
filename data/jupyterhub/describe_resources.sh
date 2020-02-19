#!/bin/sh

kubectl get service --namespace jhub
kubectl describe service proxy-public --namespace jhub
