                                       # find line with word 'millionth'
                                       # replace tabs with spaces, then get second column
cat data.txt | grep millionth | tr '\t' ' ' | cut -d ' ' -f 2    