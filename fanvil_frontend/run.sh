#!/bin/sh
set -eu
echo "Fanvil legacy frontend 20260930.5 listening on port 8124."
exec nginx -g 'daemon off;'
