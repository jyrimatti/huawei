#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep LD_LIBRARY_PATH
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix gnused dash bc netcat xxd
set -eu

object="$1"

. ./huawei_env.sh

. ./huawei_objects.sh "$object"

case $OBJECTID in
  h*)
    fcode=3
    ;;
  i*)
    fcode=4
    ;;
esac;
register="${OBJECTID%%/*}"
register="${register##*@}"
case ${OBJECTID##*/} in
  I)
    type=uint32
    ;;
  *)
    type=uint16
    ;;
esac

ret="$(dash ./modbus.sh/modbus.sh -d1 -u100 -m "$MULTIPLIER" "$HUAWEI_HOST" "$fcode" "$register" "$type" || \
       dash ./modbus.sh/modbus.sh -d2 -u100 -m "$MULTIPLIER" "$HUAWEI_HOST" "$fcode" "$register" "$type")"


if [ "$ret" = "Invalid" ]; then
  echo "$OBJECTID: Invalid address" >&2
  exit 1
else
  echo "$ret"
fi
