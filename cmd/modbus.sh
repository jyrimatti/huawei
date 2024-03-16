#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix gnused dash bc "pkgs.callPackage ./modbus_cli.nix {}"
set -eu

object=$1
getset=$2
value=${5:-}

. ./huawei_env.sh

. ./huawei_objects.sh "$object"

if [ "$getset" = "Get" ]; then
  ret=$(python ./modbus_cli_with_sleep.sh "$HUAWEI_HOST" "$OBJECTID")
elif [ "$getset" = "Set" ]; then
  python ./modbus_cli_with_sleep.sh "$HUAWEI_HOST" "$OBJECTID"="$(echo "$value" | sed "s/$/\/$MULTIPLIER/" | bc)"
  ret=1
else
  exit 1
fi

if [ "$ret" = "Invalid" ]; then
  echo "$OBJECTID: Invalid address" >&2
  exit 1
else
  echo "$ret" | sed "s/$/*$MULTIPLIER/" | bc | sed 's/^\./0./' | sed 's/^-\./-0./' 
fi