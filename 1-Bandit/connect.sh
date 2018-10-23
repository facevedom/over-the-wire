#! /bin/bash
ssh -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST 'bash -s' < $SCRIPT
