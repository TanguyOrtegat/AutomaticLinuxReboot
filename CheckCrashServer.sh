#!/bin/bash

#config Oasis Island
HOST=54.36.188.190
PORT=30120

#script
timeout 2 bash -c "</dev/tcp/$HOST/$PORT"; 

if [ $? -ne 0 ];
then
	echo `date '+%d-%B-%Y_%H:%M:%S'` " - Detected server crash!"
	echo "launching server again:"
	bash /home/FxServer/reload_fxserver.sh
fi
