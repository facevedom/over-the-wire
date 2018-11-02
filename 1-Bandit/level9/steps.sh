# notice this is one long command broken into several lines
                 # - get human-readable strings from file
                 # - grep those starting with at least two '=='
                 # - print the length of each line at the beggining
                 # - the password is the longest line, so sort them and get the first one
                 # - we added one column for the length, file had two columns
                 # third column is the password 
strings data.txt | \
grep == | \
awk '{ print length($0) " " $0 }' | \
sort -r | head -1 | \
cut -d ' ' -f 3