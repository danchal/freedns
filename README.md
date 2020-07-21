# FreeDns

Shell script using Systemd for updating your domains at [FreeDNS](http://freedns.afraid.org)

## References

[FreeDNS](https://freedns.afraid.org/)

## Requirements
        Curl

## Install
        $ sudo ./setup.sh

## Setup
1. Edit the configuration file, /etc/freedns/freedns.conf

2. Start the FreeDns Systemd timer

        $ sudo systemctl restart freedns.timer