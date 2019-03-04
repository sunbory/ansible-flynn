#!/bin/bash
#set -x

LOCAL_DIR=$(cd $(dirname "$0") && pwd)
ROOT_DIR=${LOCAL_DIR}/../../

######################################################################
function main {

    local cmd=$1
    local hosts=${2:-"all"}

    case $cmd in
    install)
        python ${ROOT_DIR}/ansible-playbook install.yml 
        ;;
    ping)
        python ${ROOT_DIR}/ansible $hosts -m ping
        ;;
    *)
        ;;
    esac

}

main $@
