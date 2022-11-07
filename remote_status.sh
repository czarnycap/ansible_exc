#!/bin/bash


echo starting the script...
#|xargs -n1 docker exec hostname -I
EXEC_COMMAND="uname -r"

function script_usage() {
    cat << EOF
Usage:
     -h|--help                  Displays this help
     -v|--verbose               Displays verbose output
    -nc|--no-colour             Disables colour output
    -cr|--cron                  Run silently unless we encounter an error
EOF
}

function check_hostname() {
    echo you are running $(hostnamectl hostname) with following IP addresses $(hostname -I|sed 's/\ /;/g')
}

check_hostname;


