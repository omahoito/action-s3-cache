#!/bin/sh

whoami
ls -lah $GITHUB_ACTION_PATH/dist/
ls -lah $GITHUB_ACTION_PATH/dist/$(echo "$OS" | tr "[:upper:]" "[:lower:]")

# Select right go binary for runner os
$GITHUB_ACTION_PATH/dist/$(echo "$OS" | tr "[:upper:]" "[:lower:]")
