#! /usr/bin/env sh

# Exit in case of error
set -e

STACK_NAME=${STACK_NAME?Variable not set}

docker-auto-labels docker-stack.yml

docker stack deploy -c docker-stack.yml --with-registry-auth "${STACK_NAME?Variable not set}"
