#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash bc netcat xxd
set -eu

dash ./cmd/modbus.sh TOTAL_ACTIVE_POWER Get
