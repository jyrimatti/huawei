#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep LD_LIBRARY_PATH --keep BKT_SCOPE --keep BKT_CACHE_DIR
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix gnused dash bc xxd netcat bkt
set -eu

stamp="$(date +%s)"

for x in TOTAL_ACTIVE_POWER\
         TOTAL_YIELD\
    ; do
    dash ./huawei_get.sh "$x" | { read -r d; echo "[$stamp,$d]"; } | dash ./huawei_convert.sh "$x"
done;
