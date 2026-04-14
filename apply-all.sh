#!/usr/bin/env bash
set -e
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/secrets.yaml
kubectl apply -f k8s/postgres/
kubectl apply -f k8s/product-service/
kubectl apply -f k8s/search-service/
kubectl apply -f k8s/auth-service/
kubectl apply -f k8s/api-gateway/
kubectl apply -f k8s/ingress.yaml
kubectl get all -n shopsy
kubectl get ingress -n shopsy
