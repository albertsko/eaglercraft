#!/bin/bash
# Get the directory where the script is located to ensure certs are saved in the correct relative path
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Use the first argument as the domain, or default to 'dev-askonieczny'
DOMAIN=${1:-dev-askonieczny}

mkdir -p "$DIR/certs"

echo "Generating self-signed certificates for: $DOMAIN"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout "$DIR/certs/selfsigned.key" \
	-out "$DIR/certs/selfsigned.crt" \
	-subj "/C=US/ST=State/L=City/O=Organization/CN=$DOMAIN"

echo "✅ Certificates generated in $DIR/certs/"
