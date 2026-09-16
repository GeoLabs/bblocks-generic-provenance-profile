#!/bin/bash
set -euo pipefail
# Serve the generated documentation locally at http://localhost:9090
exec docker run --rm --pull=always -v "$(pwd):/register" -p 9090:9090 ghcr.io/ogcincubator/bblocks-viewer
