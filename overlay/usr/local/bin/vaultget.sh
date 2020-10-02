#!/bin/sh

file="/usr/local/etc/vault.json"

case $1 in
"port")
  jq -r ".listener[].tcp.address" "$file" | awk -F':' '{print $2}'
  ;;
*)
  echo "Unknown option" >&2
  exit 1
  ;;
esac
