#!/bin/bash
# -e exits if any command has non-zero exit status
# -u script exists if you reference to nonexisting variable
# -o pipefail | This setting prevents errors in a pipeline from being masked
set -euo pipefail

HOSTNAME_CMD=$(hostname)
DEBUGGING=off

function script_usage() {
    cat << EOF
Usage:
     --help                  Displays this help
     --hostname                 Displays host name
     --ip                       Display IP addresses
     --datestamp             Display datestamp
EOF
}

function script_exit() {
    echo "invalid parameter was provided: $param"
    script_usage
}

function check_hostname() {
    echo this vm: $HOSTNAME_CMD
}

function check_ip() {
    echo IP addresses: $(hostname -I|sed 's/\ /;/g')
}
function return_date(){
    echo $(date +%Y%m%d_%X)
    
}

#stub of a function
function mydebug(){
    [[ "$DEBUGGING" == "on" ]] && echo "do something" || echo "do nothing"
    
}



function parse_params() {
#catch if no arguments are provided
[[ $# -eq 0 ]] && echo "no arguments provided"
#else please iterate via arguments

local param
    while [[ $# -gt 0 ]]; do
        param="$1"
        shift
        case $param in
            --help)
                script_usage
                exit 0
                ;;
            --hostname)
                check_hostname
                ;;
            --ip)
                check_ip
                ;;
            --datestamp)
                return_date
                ;;
            --mydebug)
                mydebug
                ;;
            *)
                script_exit
                ;;
        esac
    done
}

#main function
parse_params "$@"






