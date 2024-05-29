#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p nix dash bc netcat xxd
set -eu

dash ./cmd/modbus.sh TOTAL_YIELD Get
