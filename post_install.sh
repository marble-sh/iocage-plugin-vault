#!/bin/sh

sysrc -f /etc/rc.conf vault_enable="YES"
sysrc -f /etc/rc.conf vault_config="/usr/local/etc/vault.json"
sysrc -f /etc/rc.conf vault_syslog_output_enable="YES"

mkdir /vault-data
chown vault:vault /vault-data /usr/local/etc/vault.json
chmod +x /usr/local/bin/vaultget.sh /usr/local/bin/vaultset.sh
pw usermod -L daemon -n vault
cap_mkdb /etc/login.conf