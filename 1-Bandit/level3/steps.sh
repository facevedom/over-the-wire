# change into directory
cd ~/inhere
# find the only hidden file and read it
cat $(ls -ap | grep -v /)
