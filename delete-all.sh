#!/usr/bin/env bash
set -e
kubectl delete -f ingress.yaml --ignore-not-found=true
kubectl delete -f api-gateway/ --ignore-not-found=true
kubectl delete -f auth-service/ --ignore-not-found=true
kubectl delete -f search-service/ --ignore-not-found=true
kubectl delete -f product-service/ --ignore-not-found=true
kubectl delete -f postgres/ --ignore-not-found=true
kubectl delete -f frontend/ --ignore-not-found=true
kubectl delete -f secrets.yaml --ignore-not-found=true
kubectl delete -f namespace.yaml --ignore-not-found=true
