#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep LD_LIBRARY_PATH --keep BKT_SCOPE --keep BKT_CACHE_DIR
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix dash sqlite parallel coreutils gnused curl cacert flock bc xxd netcat bkt
set -eu

export LC_ALL=C # "fix" Nix Perl locale warnings

dash ./huawei_collect.sh | sqlite3 -cmd ".timeout 90000" ./huawei.db
