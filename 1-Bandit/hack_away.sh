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
./connect.sh>tmp
export LEVEL_1_PASSWORD=$(tail -n 1 tmp)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 1:\n${GREEN}$LEVEL_1_PASSWORD${NOCOLOR}"

# level 1
give_level_info 1
export REMOTE_USER=bandit1
export REMOTE_PASSWORD=$LEVEL_1_PASSWORD
export SCRIPT="level1/steps.sh"
./connect.sh>tmp
export LEVEL_2_PASSWORD=$(tail -n 1 tmp)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 2:\n${GREEN}$LEVEL_2_PASSWORD${NOCOLOR}"

# level 2
give_level_info 2
export REMOTE_USER=bandit2
export REMOTE_PASSWORD=$LEVEL_2_PASSWORD
export SCRIPT="level2/steps.sh"
./connect.sh>tmp
export LEVEL_3_PASSWORD=$(tail -n 1 tmp)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 3:\n${GREEN}$LEVEL_3_PASSWORD${NOCOLOR}"

# level 3
give_level_info 3
export REMOTE_USER=bandit3
export REMOTE_PASSWORD=$LEVEL_3_PASSWORD
export SCRIPT="level3/steps.sh"
./connect.sh>tmp
export LEVEL_4_PASSWORD=$(tail -n 1 tmp)
echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
echo -e "Password obtained for level 4:\n${GREEN}$LEVEL_4_PASSWORD${NOCOLOR}"
