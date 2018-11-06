#! /bin/bash
cd ~
                                                        # make a random working directory
FOLDERNAME="/tmp/$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')"
mkdir -p $FOLDERNAME
echo $REMOTE_PASSWORD > $FOLDERNAME/pass          # save the current level password there
cd $FOLDERNAME

NEXT_PASS=$(nc localhost 30000 < $FOLDERNAME/pass) # netcat current password lo localhost
echo $NEXT_PASS | rev | cut -d ' ' -f 1 | rev 

rm -rf $FOLDERNAME                                                              # cleanup
