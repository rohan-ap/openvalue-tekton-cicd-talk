#!/bin/sh
echo "Install tekton"
kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

echo "Creating namespaces and installing tekton tasks"
kubectl create namespace openvalue-ops
kubectl create namespace openvalue-prd
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/git-clone/0.6/git-clone.yaml -n openvalue-ops
kubectl apply -f tasks/kaniko.yaml -n openvalue-ops
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/maven/0.2/maven.yaml -n openvalue-ops
kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/main/task/helm-upgrade-from-source/0.3/helm-upgrade-from-source.yaml -n openvalue-ops
