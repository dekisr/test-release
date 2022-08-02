#!/bin/bash
# Ignore builds from github-actions[bot] commits

echo "VERCEL_GIT_COMMIT_AUTHOR_NAME: $VERCEL_GIT_COMMIT_AUTHOR_NAME"

if [[ "$VERCEL_GIT_COMMIT_AUTHOR_NAME" == "github-actions[bot]"  ]]; then
  # Don't build
  echo "🛑 - Build cancelled"
  exit 0;

else
  # Proceed with the build
    echo "✅ - Build can proceed"
  exit 1;
fi