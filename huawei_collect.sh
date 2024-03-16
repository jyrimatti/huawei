#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix gnused dash bc "pkgs.callPackage ./modbus_cli.nix {}"
set -eu

stamp="$(date +%s)"

for x in TOTAL_ACTIVE_POWER\
         TOTAL_YIELD\
    ; do
    dash ./cmd/modbus.sh "$x" Get | { read -r d; echo "[$stamp,$d]"; }
done;
