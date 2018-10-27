cd ~/inhere
                                                   # recursively find all 
                                                   # - non executable files
                                                   # - sized 1033 bytes
for i in $(find . -size 1033c \! -executable)      # iterate over found files
do
    if [[ $(file "$i") =~ "ASCII text" ]]; then    # check if file is human readable
        cat "$i" | xargs                           # trim whitespaces from password
    fi
done