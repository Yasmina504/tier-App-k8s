#!/bin/bash
echo "Updating deployments with correct image names..."

# احذفي ال deployments القديمة
kubectl delete deployment backend-deployment
kubectl delete deployment frontend-deployment

# طبقى الملفات المعدلة
kubectl apply -f backend-deployment.yaml
kubectl apply -f frontend-deployment.yaml

echo "Updated! Checking pods..."
kubectl get pods
