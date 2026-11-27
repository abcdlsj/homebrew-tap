#!/usr/bin/env bash
# Regenerates the install table in README.md from Casks/*.rb and Formula/*.rb.
# Builds "brew install --cask <name>  <version>  <description>" rows, then
# rewrites everything between the table markers.
set -euo pipefail

cd "$(dirname "$0")/.."

row() { # kind file
  local kind=$1 file=$2 name version desc
  name=$(basename "$file" .rb)
  version=$(grep -Eo 'download/v[0-9][^/"]*|version "[^"]+"' "$file" | head -1 | sed -E 's#.*/v##; s/version "//; s/"//')
  desc=$(sed -nE 's/^  desc "(.*)"$/\1/p' "$file" | head -1)
  if [ "$kind" = cask ]; then
    printf '| `%s` | cask | %s | %s |\n' "$name" "${version:--}" "$desc"
  else
    printf '| `%s` | formula | %s | %s |\n' "$name" "${version:--}" "$desc"
  fi
}

{
  echo '| Name | Kind | Version | Description |'
  echo '|---|---|---|---|'
  for f in Formula/*.rb; do [ -e "$f" ] && row formula "$f"; done
  for f in Casks/*.rb; do [ -e "$f" ] && row cask "$f"; done
} > /tmp/homebrew-tap-table.md

python3 - "$(pwd)/README.md" <<'PY'
import sys
p = sys.argv[1]
table = open('/tmp/homebrew-tap-table.md').read().rstrip('\n')
s = open(p).read()
start, end = '<!-- table:start -->', '<!-- table:end -->'
if start not in s or end not in s:
    sys.exit(f'{p}: missing {start} / {end} markers')
head, rest = s.split(start, 1)
_, tail = rest.split(end, 1)
open(p, 'w').write(f'{head}{start}\n{table}\n{end}{tail}')
PY

echo "updated README.md"
