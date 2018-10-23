#! /bin/bash
sshpass -p $REMOTE_PASSWORD ssh -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s' < $SCRIPT
