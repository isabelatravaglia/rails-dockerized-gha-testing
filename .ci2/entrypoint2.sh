#!/bin/bash
set -e

echo "Entrypoint is here"

echo "Listing all files in the current path"
for file in $PWD/*; do
  echo "${file##*/}"
done

echo "running db:test:prepare"
bundle exec rails db:test:prepare
echo "finished running db:prepare"

exec "$@"