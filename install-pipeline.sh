#!/bin/sh
kubectl apply -f pipeline/clusterrolebinding.yaml
kubectl apply -f pipeline/pipeline.yaml
