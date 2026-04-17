#!/usr/bin/env bash
set -e
kubectl apply -f namespace.yaml
kubectl apply -f secrets.yaml
kubectl apply -f postgres/
kubectl apply -f product-service/
kubectl apply -f search-service/
kubectl apply -f auth-service/
kubectl apply -f api-gateway/
kubectl apply -f frontend/
kubectl apply -f ingress.yaml
kubectl get all -n shopsy
kubectl get ingress -n shopsy
