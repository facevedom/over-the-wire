cd ~
ssh -i sshkey.private -o StrictHostKeyChecking=no bandit14@localhost "cat /etc/bandit_pass/bandit14"
