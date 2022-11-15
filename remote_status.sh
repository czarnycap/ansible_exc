#!/bin/bash



HOSTNAME_CMD=$(hostname)

function script_usage() {
    cat << EOF
Usage:
     --help                  Displays this help
     --hostname                 Displays host name
     --ip                       Display IP addresses
EOF
}

function check_hostname() {
    echo $(date +%Y%m%d_%X)
    echo this vm: $HOSTNAME_CMD has following IP addresses: $(hostname -I|sed 's/\ /;/g')
}

check_hostname;


