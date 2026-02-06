#!/bin/bash
# Deploy Code Espresso landing page to Cloud Run
set -e

PROJECT_ID="${1}"
REGION="${2:-us-central1}"

if [ -z "$PROJECT_ID" ]; then
  echo "❌ Error: Project ID is required."
  echo "Usage: ./deploy.sh <PROJECT_ID> [REGION]"
  exit 1
fi
SERVICE_NAME="code-espresso-web"

echo "🚀 Deploying Code Espresso to GCP..."
echo "📍 Project: $PROJECT_ID | Region: $REGION"

gcloud config set project "$PROJECT_ID"

gcloud run deploy $SERVICE_NAME \
  --source . \
  --region $REGION \
  --allow-unauthenticated \
  --port 80 \
  --project $PROJECT_ID

SERVICE_URL=$(gcloud run services describe $SERVICE_NAME --region=$REGION --format='value(status.url)' --project $PROJECT_ID)

echo ""
echo "✅ Deployed!"
echo "🌐 URL: $SERVICE_URL"
