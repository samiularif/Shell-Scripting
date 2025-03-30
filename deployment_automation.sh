#!/bin/bash

#Variables
NAMESPACE="default"
DEPLOYMENT_NAME="my-deployment"
IMAGE_NAME="my-image:v1.0.0"

#deploy to kubernetes
kubectl set image deployment/$DEPLOYMENT_NAME $DEPLOYMENT_NAME=$IMAGE_NAME --namespace=$NAMESPACE

echo "Deployment updated to version $IMAGE_NAME"

