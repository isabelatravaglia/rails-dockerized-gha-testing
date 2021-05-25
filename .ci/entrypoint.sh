#!/bin/bash
set -e

echo "Entrypoint is here"

echo "Listing all files in the current path"
for file in $PWD/*; do
  echo "${file##*/}"
done

echo "running db:prepare"
bundle exec rails db:prepare
echo "finished running db:prepare"

exec "$@"