#! /bin/bash
# disabling host key checking is not very nice
sshpass -p $REMOTE_PASSWORD ssh -o StrictHostKeyChecking=no -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST "export REMOTE_PASSWORD=$REMOTE_PASSWORD && bash -s" < $SCRIPT
