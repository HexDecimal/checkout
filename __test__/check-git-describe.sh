#!/bin/bash
# check-git-describe <expected>
# Checks that the 'git describe' command returns the expected value.

describe="$(git describe)"
if [[ "$describe" != "$1" ]]; then
    echo "Expected $1 from git describe, (got $describe)"
    exit 1
fi
