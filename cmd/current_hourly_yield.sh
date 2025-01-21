#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-24.11-small -p nix dash sqlite
set -eu

dbfile="${1:-./huawei.db}"

echo "SELECT MAX(measurement)-MIN(measurement)
      FROM total_yield
      WHERE instant >= strftime('%s', strftime('%Y-%m-%dT%H:00:00Z', 'now'))"\
 | sqlite3 "$dbfile"\
 | { read -r val; printf '%.3f\n' "$val"; }

