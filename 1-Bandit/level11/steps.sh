#! /bin/bash
                                                    # rotate alphabet ranges 13 positions
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | rev | cut -d ' ' -f 1 | rev
