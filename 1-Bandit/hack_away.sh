export REMOTE_PORT=2220
export REMOTE_HOST=bandit.labs.overthewire.org

# level 0
echo "Hacking level 0"
export REMOTE_USER=bandit0
export REMOTE_PASSWORD=bandit0
export SCRIPT="level0/steps.sh"
export LEVEL_1_PASS=$(./connect.sh)
echo "Password obtained for level 1: $LEVEL_1_PASS"
