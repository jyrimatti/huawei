#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p nix gnused dash bc netcat xxd
set -eu

object="$1"
getset="$2"
value="${5:-}"

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

if [ "$getset" = "Get" ]; then
  ret="$(dash ./modbus.sh/modbus.sh -d1 -u100 -m "$MULTIPLIER" "$HUAWEI_HOST" "$fcode" "$register" "$type" ||\
         dash ./modbus.sh/modbus.sh -d2 -u100 -m "$MULTIPLIER" "$HUAWEI_HOST" "$fcode" "$register" "$type")"
elif [ "$getset" = "Set" ]; then
  response="$(dash ./modbus.sh/modbus.sh -d1 -u100 -m "$MULTIPLIER" "$HUAWEI_HOST" 6 "$register" "$type" "$value")"
  ret=1
else
  exit 1
fi

if [ "$ret" = "Invalid" ]; then
  echo "$OBJECTID: Invalid address" >&2
  exit 1
else
  echo "$ret"
fi
