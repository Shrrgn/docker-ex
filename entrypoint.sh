#!/bin/bash

echo "My application..."
pwd

echo "Hello from docker"

set -euo pipefail
rm -f .env

cat << EOF > .env
DEBUG=${DEBUG:-false}
SECRET_KEY=${SECRET_KEY:-}

MODE=${MODE:-dev}

POSTGRES_HOST=${POSTGRES_HOST:-psql}
POSTGRES_PORT=${POSTGRES_HOST:-5432}
POSTGRES_DB=${POSTGRES_HOST:-}
POSTGRES_USER=${POSTGRES_HOST:-}
POSTGRES_PASSWORD=${POSTGRES_HOST:-}
EOF

python manage.py migrate
# python manage.py collectstatic
exec "$@"
