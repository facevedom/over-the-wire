#! /bin/bash

# helper utilities
give_level_info () {
    export NEXT_LEVEL=`expr "$1" + "1"`
    echo -e "\n${RED}__________________________________________________________________________________________\n"
    echo -e "[ Hacking $WARGAME level $1 -> level $NEXT_LEVEL ]${NOCOLOR}"
    echo -e "  Website: http://overthewire.org/wargames/$WARGAME/$WARGAME$NEXT_LEVEL.html\n"
}

# colors using ANSI escape codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
GRAY='\033[0;33m'
NOCOLOR='\033[0m'

# setup
clear
export WARGAME="bandit"
export REMOTE_PORT=2220
export REMOTE_HOST=bandit.labs.overthewire.org
export NEXT_LEVEL_PASSWORD=bandit0

for i in {0..6}
do
    give_level_info $i
    export REMOTE_USER="bandit$i"
    export REMOTE_PASSWORD="$NEXT_LEVEL_PASSWORD"
    export SCRIPT="level$i/steps.sh"
    echo -e "${BLUE}$(cat $SCRIPT)${NOCOLOR}\n"
    ./connect.sh>tmp
    export NEXT_LEVEL_PASSWORD=$(tail -n 1 tmp)
    echo -e "Password obtained for level `expr "$i" + "1"`: ${GREEN}$NEXT_LEVEL_PASSWORD${NOCOLOR}"
    
    if [[ "$@" == "-i" ]]
    then
        read -p "$(echo -e ${GRAY}press enter to continue${NOCOLOR})"
    fi
done
