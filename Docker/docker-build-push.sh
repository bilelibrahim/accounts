#!/usr/bin/env bash

# Usage (from root of project): sh ./Docker/docker-build-push.sh

./gradlew clean build
docker build -f Docker/Dockerfile --no-cache -t bilel/storefront-accounts:gke-2.2.0 .
docker push bilel/storefront-accounts:gke-2.2.0

# docker run --name storefront-accounts -d bilel/storefront-accounts:gke-2.2.0
