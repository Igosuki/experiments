#!/bin/sh

echo "Assuming kubectl context is available for 'kind-kind'"

kubectl --namespace kube-system --context kind-kind create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller --wait
kubectl patch deployment tiller-deploy --namespace=kube-system --type=json --patch='[{"op": "add", "path": "/spec/template/spec/containers/0/command", "value": ["/tiller", "--listen=localhost:44134"]}]'
helm version

./traefik/apply_traefik.sh