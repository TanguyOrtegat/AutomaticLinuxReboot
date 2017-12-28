#!/bin/bash

#config
HOST=5.196.127.113
PORT=30120

#script
# timeout 2 bash -c "</dev/tcp/$HOST/$PORT";

(exec 3<>/dev/tcp/$HOST/$PORT) &>/dev/null

if [ $? -ne 0 ];
then
    echo `date '+%d-%B-%Y_%H:%M:%S'` " - Detected server crash!"
	echo "launching server again:"
	bash /home/GTAESXServer/reload_fxserver.sh
# else 
	# echo `date '+%d-%B-%Y_%H:%M:%S'` " - Server on!"
fi

