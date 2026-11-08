#!/bin/sh
set -eu
echo "Fanvil staging proxy listening on 8124; no legacy frontend installed yet."
exec nginx -g 'daemon off;'
