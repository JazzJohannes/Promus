#!/bin/sh

#  Swapfile.sh
#  Promus
#  Copyright © 2013 by Johannes Frotscher.

printf "Swapfiles: %d MB" `BLOCKSIZE=1048576; export BLOCKSIZE; du /var/vm | cut -f 1`