#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=amandeepsinghahuja/house-price-predictor:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment house-price-predictor-app --image=amandeepsinghahuja/house-price-predictor:1.0

# Step 3:
# List kubernetes pods
kubectl get pods

#Check if pod is running before proceeding further 
ready=`kubectl get pods -o jsonpath="{.items[*].status.phase}"`
while [ $ready != 'Running' ]
do
        echo "Waiting for Pod to be up"
        sleep 5 
        ready=`kubectl get pods -o jsonpath="{.items[*].status.phase}"`
done

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/house-price-predictor-app --address 0.0.0.0 8000:80
