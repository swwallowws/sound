#!/usr/bin/env bash
# Copy the design system's current bank and notice here. Run it when design ships a new
# gm.sf3 (and bumps SOUNDFONT_VERSION in sound/soundfont.js), then commit and push.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
design="${1:-$here/../design}"
for f in gm.sf3 NOTICE; do
  if cmp -s "$design/sound/$f" "$here/$f"; then echo "same $f"; else cp "$design/sound/$f" "$here/$f"; echo "updated $f"; fi
done
