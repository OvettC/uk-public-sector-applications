#!/usr/bin/env bash
# Packages the skill folder into dist/uk-public-sector-applications.skill
# (a zip archive) ready to upload to Claude or attach to a GitHub release.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/uk-public-sector-applications.skill
zip -r -X dist/uk-public-sector-applications.skill uk-public-sector-applications -x "*.DS_Store"
echo "Built dist/uk-public-sector-applications.skill"
