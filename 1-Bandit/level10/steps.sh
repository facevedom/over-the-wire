#! /bin/bash
base64 -d data.txt | rev | cut -d ' ' -f 1 | rev  # decode from base64, print last column