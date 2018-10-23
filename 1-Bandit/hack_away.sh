#! /bin/bash

export WARGAME="bandit"

give_level_info () {
    echo "Hacking $WARGAME level $1"
    echo "Website: http://overthewire.org/wargames/$WARGAME/$WARGAME$1.html"
}

export REMOTE_PORT=2220
export REMOTE_HOST=bandit.labs.overthewire.org

# level 0
give_level_info 0
export REMOTE_USER=bandit0
export REMOTE_PASSWORD=bandit0
export SCRIPT="level0/steps.sh"
export LEVEL_1_PASS=$(./connect.sh)
echo "Password obtained for level 1: $LEVEL_1_PASS"
