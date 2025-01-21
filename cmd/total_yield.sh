#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep LD_LIBRARY_PATH -i dash -I channel:nixos-24.11-small -p nix dash bc netcat xxd
set -eu

dash ./cmd/modbus.sh TOTAL_YIELD Get
