#!/usr/bin/env bash

set -e

# Return code
RET_CODE=0

echo "Inputs:"
echo "  foobar: ${INPUT_FOOBAR}"

## Require github_token
#if [[ -z "${INPUT_GITHUB_TOKEN}" ]]; then
#  # shellcheck disable=SC2016
#  MESSAGE='Missing input "github_token: ${{ secrets.GITHUB_TOKEN }}".'
#  echo "[ERROR] ${MESSAGE}"
#  exit 1
#fi

# Run main action
echo "[INFO] Input var BAZ: ${INPUT_FOOBAR}"
RET_CODE=$?

# Finish
echo "::set-output name=barfoo::${INPUT_FOOBAR}"
if [[ ${RET_CODE} != "0" ]]; then
  echo -e "\n[ERROR] Check log for errors."
  exit 1
else
  # Pass in other cases
  echo -e "\n[INFO] No errors found."
  exit 0
fi
