#!/bin/bash

set -ex

# Get the last commit message
commit_message="$GIT_CLONE_COMMIT_MESSAGE_SUBJECT\n$GIT_CLONE_COMMIT_MESSAGE_BODY"

# Check if the commit message contains "#run-unit-tests"
if echo "$commit_message" | grep -q "#run-unit-tests"; then
    envman add --key RUN_ASCII --value "true"
else
    envman add --key RUN_ASCII --value "false"
fi

# Check if the commit message contains "#run-ui-tests"
if echo "$commit_message" | grep -q "#run-ui-tests"; then
    envman add --key RUN_UI_TESTS --value "true"
else
    envman add --key RUN_UI_TESTS --value "false"
fi