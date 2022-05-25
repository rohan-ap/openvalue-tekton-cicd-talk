#!/bin/sh
kubectl delete pods,persistentvolumeclaims,pipelineruns,pipelines --all -n openvalue-ops
kubectl delete deployments,replicasets,pods,services --all -n openvalue-prd
gcloud artifacts docker images delete europe-west1-docker.pkg.dev/openvalue-tekton-cicd-talk/docker/hello-world-service
