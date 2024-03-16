#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash bc "pkgs.callPackage ./modbus_cli.nix {}"
set -eu

dash ./cmd/modbus.sh TOTAL_YIELD Get
