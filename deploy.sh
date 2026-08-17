#!/bin/bash
docker compose \
    -p "${COMPOSE_PROJECT_NAME:-ailyze-deployment}" \
    -f docker-compose.yml \
    -f ./compose-files/backend-oneclickinsight/docker-compose.oneclickinsight.dev.yml \
    -f ./compose-files/others/docker-compose.celery.yml \
    -f ./compose-files/others/docker-compose.redis.yml \
    -f ./compose-files/others/docker-compose.rabbitmq.yml \
    "$@";
