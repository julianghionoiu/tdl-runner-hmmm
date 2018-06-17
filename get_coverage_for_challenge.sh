#!/usr/bin/env bash

set -x
set -e
set -u
set -o pipefail

SCRIPT_CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "This is a sample script and does not actually compute the coverage. It just displays the content of a file."

echo "Let us check if 'script_with_CRLF.sh' will execute"
./script_with_CRLF.sh

cat ${SCRIPT_CURRENT_DIR}/coverage.tdl
