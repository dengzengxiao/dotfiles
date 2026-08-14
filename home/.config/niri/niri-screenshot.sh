#!/bin/sh

set -eu

dir=$(mktemp -d -t niri-satty.XXXXXX)
trap 'rm -rf -- "$dir"' EXIT INT TERM
image="$dir/capture.png"

niri msg action screenshot --path "$image"

for _ in $(seq 1 600); do
    [ -s "$image" ] && break
    sleep 0.1
done

[ -s "$image" ] || exit 0

satty -f "$image" \
    --floating-hack \
    --app-id com.gabm.satty
