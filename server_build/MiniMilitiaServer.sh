#!/bin/sh
printf '\033c\033]0;%s\a' Mini Militia
base_path="$(dirname "$(realpath "$0")")"
"$base_path/MiniMilitiaServer.x86_64" "$@"
