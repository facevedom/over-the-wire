FILES=~/inhere/*                                 # list files in directory

for f in $FILES                                  # iterate over files list
do  
  FILE_TYPE=$(file $f)                           # get file type
  if [[ "$FILE_TYPE" =~ "ASCII text" ]]; then    # check if file is human-readable
    cat "$f"                                     # found the password
  fi
done