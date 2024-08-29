#!/bin/sh
export USER=$(whoami)
ARGS="generate $INPUT_ARGUMENTS --name \"$INPUT_NAME\" --path \"$INPUT_TEMPLATE\" $INPUT_SUBFOLDER"
printf '%s\n' "$ARGS" | xargs /usr/bin/cargo-generate
