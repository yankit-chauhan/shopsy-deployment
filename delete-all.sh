#!/usr/bin/env bash
set -e
kubectl delete -f k8s/ingress.yaml --ignore-not-found=true
kubectl delete -f k8s/api-gateway/ --ignore-not-found=true
kubectl delete -f k8s/auth-service/ --ignore-not-found=true
kubectl delete -f k8s/search-service/ --ignore-not-found=true
kubectl delete -f k8s/product-service/ --ignore-not-found=true
kubectl delete -f k8s/postgres/ --ignore-not-found=true
kubectl delete -f k8s/secrets.yaml --ignore-not-found=true
kubectl delete -f k8s/namespace.yaml --ignore-not-found=true
