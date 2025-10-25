#!/bin/sh
set -e

# Start n8n with any extra arguments passed (like --tunnel)
exec n8n start "$@"
