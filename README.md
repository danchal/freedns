# FreeDns

Shell script using Systemd for updating your domains at [FreeDNS](http://freedns.afraid.org). Uses [OpenDNS](https://opendns.com/) to resolve the external IP address and your domain IP addresses. Only updates afraid.org when the IP addresses do not match.

## References

[FreeDNS](https://freedns.afraid.org/)

[OpenDNS](https://opendns.com/)


## Requirements
        Dig
        Curl

## Install
        $ sudo ./setup.sh

## Setup
1. Edit the configuration file, /etc/freedns/freedns.conf

2. Start the FreeDns Systemd timer

        $ sudo systemctl restart freedns.timer