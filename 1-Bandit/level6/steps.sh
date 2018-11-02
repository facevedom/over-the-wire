                                                             # owned by user bandit7 
                                                             # and owned by group bandit6
                                                             # and 33 bytes in size
                                                             # and ignore errors
cat $(find / 2>/dev/null -user bandit7 -group bandit6 -size 33c)    # find'em all