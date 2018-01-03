#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
PREVIEWDIR="$SCRIPTPATH/previews"
mkdir -p "$PREVIEWDIR"
echo "Preview directory: $PREVIEWDIR"

find . -type d -exec sh subscript.sh {} {} "$PREVIEWDIR" \;