#!/bin/bash
set -e

APP_NAME="business-vue-web"

echo "🚀 Deploying Vue App..."

git pull origin main

docker build -t $APP_NAME .
docker stop $APP_NAME || true
docker rm $APP_NAME || true

docker run -d \
  --name $APP_NAME \
  -p 80:80 \
  --restart always \
  $APP_NAME

echo "✅ Vue App deployed successfully"
