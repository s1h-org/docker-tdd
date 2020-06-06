#!/bin/bash

set -e

. $HOME/.nvm/nvm.sh

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- node "$@"
fi

echo "Executing $@"
exec "$@"