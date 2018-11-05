cd ~
                                                        # make a random working directory
FOLDERNAME="/tmp/$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')"
mkdir -p $FOLDERNAME
cp data.txt $FOLDERNAME/data.txt                                    # move our file there
cd $FOLDERNAME

xxd -r data.txt > compressed_file.tar.gz                                # reverse hexdump

file compressed_file.tar.gz           # first compression layer is 'gzip compressed data'
gunzip compressed_file.tar.gz                                     # decompress using gzip

file compressed_file.tar            # second compression layer is 'bzip2 compressed data'
bunzip2 compressed_file.tar                                      # decompress using bzip2

file compressed_file.tar.out                                        # third layer is gzip
mv compressed_file.tar.out compressed_file.tar.gz                  # rename file for gzip
gunzip compressed_file.tar.gz                                     # decompress using gzip

file compressed_file.tar                            # fourth layer is 'POSIX tar archive'
tar -xvf compressed_file.tar                                                 # untar file

file data5.bin                                              # fifth layer is a tar, again
tar -xvf data5.bin                                                                # untar

file data6.bin                                                     # sixth layer is bzip2
bunzip2 data6.bin                                                         # sigh... unzip

file data6.bin.out                                          # seventh layer is tar, again
tar -xvf data6.bin.out                                                         # untar...

file data8.bin                                            # eighth friggin' layer is gzip
mv data8.bin data8.gz                                     # "dis name no like like" -gzip
gunzip data8.gz                                                               # gunzip it

file data8                                                         # ASCII text, finally!
cat data8 | rev | cut -d ' ' -f 1 | rev                                          # got it

rm -rf $FOLDERNAME                                                         # some cleanup
