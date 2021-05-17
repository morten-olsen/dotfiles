#!/bin/bash
GIT_USER="$1"

KEY=$(curl https://github.com/$GIT_USER.gpg)

echo "$KEY" | gpg --import
