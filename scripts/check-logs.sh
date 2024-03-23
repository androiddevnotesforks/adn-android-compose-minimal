#!/bin/bash

set -ex

# Check logs

echo "$RUN_COMMIT_DATE_STEP"

if [ "$RUN_COMMIT_DATE_STEP" = "true" ]; then
    echo "Running unit tests"
else
    echo "Skipping unit tests"
fi
