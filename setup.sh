#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* && -f /etc/lsb-release ]]; then
    source /etc/lsb-release
    if [[ "$DISTRIB_ID" == "Ubuntu" ]]; then
        apt update
        apt install -y ansible
        ansible-pull -U https://github.com/OmarAlraisi/spin-ubuntu-dev-machine.git -K
    else
        echo "This script is intended for Ubuntu Linux only."
        exit 1
    fi
else
    echo "This script is intended for Ubuntu Linux only."
    exit 1
fi
