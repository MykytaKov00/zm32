# start-docker-build.ps1

# Set execution policy for the current user (run this separately if needed)
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Start Docker Compose
#docker-compose -f docker-compose-prod.yml --env-file .env.local build --no-cache
docker-compose -f docker-compose-prod.yml --env-file .env.local build di
docker-compose -f docker-compose-prod.yml --env-file .env.local up -d

# Wait a few seconds
Start-Sleep -Seconds 10

# Open the URL in the default browser
Start-Process "https://127.0.0.1:4444"
