#!/bin/sh

file="/usr/local/etc/vault.json"

case $1 in
"port")
  jq ".listener[].tcp.address = \"0.0.0.0:$2\"" "$file" | sponge "$file"
  ;;
*)
  echo "Unknown option" >&2
  exit 1
  ;;
esac
