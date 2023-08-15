#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* && -f /etc/lsb-release ]]; then
    source /etc/lsb-release
    if [[ "$DISTRIB_ID" == "Ubuntu" ]]; then
        sudo apt update
        sudo apt install -y ansible
        ansible-pull -U https://github.com/OmarAlraisi/spin-ubuntu-dev-machine.git -K
        sudo apt upgrade -y
    else
        echo "This script is intended for Ubuntu Linux only."
        exit 1
    fi
else
    echo "This script is intended for Ubuntu Linux only."
    exit 1
fi
