cd ~
                     # ssh into localhost, using a private key file, to get next password
ssh -i sshkey.private -o StrictHostKeyChecking=no bandit14@localhost \
"cat /etc/bandit_pass/bandit14"
