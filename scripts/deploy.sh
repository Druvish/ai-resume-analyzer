#!/bin/bash

# Deploy script for RESUMIND AI Resume Analyzer
# This script pushes changes to Git which triggers Vercel deployment

echo "Deploying RESUMIND to Vercel..."

# Navigate to the main project directory
cd "$(dirname "$0")/../ai-resume-analyzer-main/ai-resume-analyzer-main" || exit

# Add all changes
git add -A

# Commit with timestamp
git commit -m "Deploy: Added creator credit - Created by Siddhesh G" || echo "No changes to commit"

# Push to deploy-app branch (as configured)
git push origin deploy-app

echo "✓ Changes pushed to Git!"
echo "✓ Vercel will automatically deploy the changes"
echo "✓ Your app will be live shortly!"
