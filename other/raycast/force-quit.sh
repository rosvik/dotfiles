#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Force Quit
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }
# @raycast.packageName killall

# Documentation:
# @raycast.author rosvik
# @raycast.authorURL https://raycast.com/rosvik

killall -v "$1" | cat
