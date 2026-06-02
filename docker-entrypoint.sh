#!/bin/sh
set -eu

DATA_DIR="/home/node/.reposphere"

mkdir -p "$DATA_DIR"
chown -R node:node "$DATA_DIR"

exec su node -s /bin/sh -c 'exec node dist/server.js'
