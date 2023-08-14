#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    apt install ansible
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install ansible
fi

ansible-pull -U https://github.com/OmarAlraisi/spin-ubuntu-dev-machine.git -K
