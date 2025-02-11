#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep LD_LIBRARY_PATH --keep BKT_SCOPE --keep BKT_CACHE_DIR
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix gnused dash bc netcat xxd bkt
set -eu

object="$1"

bkt --discard-failures --ttl 60s --stale 50s -- dash ./huawei_get_fetch.sh "$object"
