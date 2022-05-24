#!/bin/sh
kubectl delete pods,persistentvolumeclaims,pipelineruns,pipelines --all -n openvalue-ops
kubectl delete deployments,replicasets,pods,services --all -n openvalue-prd
