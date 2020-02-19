#!/bin/sh

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/

# Suggested values: advanced users of Kubernetes and Helm should feel
# free to use different values.
RELEASE=jhub
NAMESPACE=jhub

"Installing jupyterhub/jupyterhub as $RELEASE in namespace $NAMESPACE, run `kubectl get pod --namespace jhub` to see the pods"
helm upgrade --install $RELEASE jupyterhub/jupyterhub \
  --namespace $NAMESPACE  \
  --version=0.8.2 \
  --values config.yaml

