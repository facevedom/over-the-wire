#! /bin/bash
cd ~/inhere                                                   # change into directory
cat "$(echo .[^.]*)"                                          # read the only hidden file
