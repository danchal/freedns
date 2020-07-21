#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as sudo/root"
  exit
fi

cd "$( dirname "${BASH_SOURCE[0]}" )"

SYSTEMD_UNIT="freedns"

# do not clobber an existing config file
cp -n ${SYSTEMD_UNIT}.conf /etc/

# create systemd service
cp ${SYSTEMD_UNIT}.service /etc/systemd/system/
cp ${SYSTEMD_UNIT}.timer /etc/systemd/system/
cp ${SYSTEMD_UNIT} /usr/local/sbin/

systemctl daemon-reload
systemctl enable ${SYSTEMD_UNIT}.service
systemctl enable ${SYSTEMD_UNIT}.timer
