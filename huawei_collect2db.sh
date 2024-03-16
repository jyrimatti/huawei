#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix dash sqlite parallel coreutils gnused curl cacert flock bc "pkgs.callPackage ./modbus_cli.nix {}"
set -eu

export LC_ALL=C # "fix" Nix Perl locale warnings

dash ./huawei_collect.sh | sqlite3 -cmd ".timeout 90000" ./huawei.db
