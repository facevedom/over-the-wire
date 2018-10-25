#! /bin/bash

# helper utilities
give_level_info () {
    echo -e "\n${RED}-> Hacking $WARGAME level $1${NOCOLOR}"
    echo -e "   Website: http://overthewire.org/wargames/$WARGAME/$WARGAME$1.html\n"
}

# colors using ANSI escape codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NOCOLOR='\033[0m'

# setup
clear
export WARGAME="bandit"
export REMOTE_PORT=2220
export REMOTE_HOST=bandit.labs.overthewire.org

# level 0
give_level_info 0
export REMOTE_USER=bandit0
export REMOTE_PASSWORD=bandit0
export SCRIPT="level0/steps.sh"
export LEVEL_1_PASS=$(./connect.sh)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 1: ${GREEN}$LEVEL_1_PASS${NOCOLOR}"

# level 1
give_level_info 1
export REMOTE_USER=bandit1
export REMOTE_PASSWORD=$LEVEL_1_PASS
export SCRIPT="level1/steps.sh"
export LEVEL_2_PASS=$(./connect.sh)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 2: ${GREEN}$LEVEL_2_PASS${NOCOLOR}"

# level 2
give_level_info 2
export REMOTE_USER=bandit2
export REMOTE_PASSWORD=$LEVEL_2_PASS
export SCRIPT="level2/steps.sh"
export LEVEL_3_PASS=$(./connect.sh)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 3: ${GREEN}$LEVEL_3_PASS${NOCOLOR}"

# level 3
give_level_info 3
export REMOTE_USER=bandit3
export REMOTE_PASSWORD=$LEVEL_3_PASS
export SCRIPT="level3/steps.sh"
export LEVEL_4_PASS=$(./connect.sh)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 4: ${GREEN}$LEVEL_4_PASS${NOCOLOR}"
