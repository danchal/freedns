#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as sudo/root"
  exit
fi

cd "$( dirname "${BASH_SOURCE[0]}" )"

SYSTEMD_UNIT="freedns"
CONFIG_DIR="/etc/${SYSTEMD_UNIT}/"

# create config directory
mkdir ${CONFIG_DIR}

# do not clobber an existing config file
cp -n ${SYSTEMD_UNIT}.conf ${CONFIG_DIR}

# create systemd service
cp ${SYSTEMD_UNIT}.service /etc/systemd/system/
cp ${SYSTEMD_UNIT}.timer /etc/systemd/system/
cp ${SYSTEMD_UNIT} /usr/local/bin/

systemctl daemon-reload
systemctl enable ${SYSTEMD_UNIT}.service
systemctl enable ${SYSTEMD_UNIT}.timer
