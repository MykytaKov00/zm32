#!/bin/bash

# Build and start the containers
cd ..
docker-compose -f docker-compose-prod.yml --env-file .env.local build 
docker-compose -f docker-compose-prod.yml --env-file .env.local up -d

# Wait for a few seconds to ensure the service is running
sleep 10

# Open the URL in the default browser
echo "Opening URL in the browser..."
xdg-open https://127.0.0.1:4444