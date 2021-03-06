#!/bin/sh
set -e

if [ -z "${STATIC_PAGES_HOST}" ]; then
  echo "Must set STATIC_PAGES_HOST environment variable"
  exit 1
fi

[ -z "${PORT}" ] && export PORT="80"
[ -z "${BACKEND_HOST}" ] && export BACKEND_HOST="http://127.0.0.1:8080/"
[ -z "${LOG_LEVEL}" ] && export LOG_LEVEL="ERROR"

# shellcheck disable=SC2016
envsubst '${BACKEND_HOST} ${STATIC_PAGES_HOST} ${PORT} ${LOG_LEVEL}' < /etc/traefik/traefik.yaml.template > /etc/traefik/traefik.yaml

exec "$@"
