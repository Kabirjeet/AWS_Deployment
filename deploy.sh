#!/bin/bash

set -e

APP_DIR="/home/ubuntu/AWS_Deployment"
BACKEND_DIR="$APP_DIR/Backend"

CONTAINER_NAME="neuroflux-backend-container"
IMAGE_NAME="neuroflux-backend"

echo "======================================"
echo "Starting NeuroFlux deployment"
echo "======================================"

cd "$APP_DIR"

echo "[1/6] Checking Git status..."
git status --short

echo "[2/6] Updating source code..."
git fetch origin
git reset --hard origin/main

echo "[3/6] Building Docker image..."
cd "$BACKEND_DIR"

docker build -t "$IMAGE_NAME:latest" .

echo "[4/6] Stopping existing container..."

if docker ps -q -f name="^${CONTAINER_NAME}$" | grep -q .; then
    docker stop "$CONTAINER_NAME"
fi

echo "[5/6] Removing existing container..."

if docker ps -aq -f name="^${CONTAINER_NAME}$" | grep -q .; then
    docker rm "$CONTAINER_NAME"
fi

echo "[6/6] Starting new container..."

docker run -d \
    --name "$CONTAINER_NAME" \
    --restart unless-stopped \
    --env-file "$BACKEND_DIR/.env" \
    -p 8001:8000 \
    -v "$BACKEND_DIR/uploads:/app/uploads" \
    "$IMAGE_NAME:latest"

echo ""
echo "======================================"
echo "Deployment completed"
echo "======================================"

echo ""
echo "Container status:"

docker ps --filter "name=$CONTAINER_NAME"

echo ""

echo "Health check:"

sleep 3

curl -f http://127.0.0.1:8001/api/health

echo ""

echo "Deployment successful."
