#!/bin/bash

#config
HOST=149.91.81.207
PORT=30120

#script
timeout 2 bash -c "</dev/tcp/$HOST/$PORT"; 

if [ $? -ne 0 ];
then
	echo `date '+%d-%B-%Y_%H:%M:%S'` " - Detected server crash!"
	echo "launching server again:"
	bash /home/FxServer/reload_fxserver.sh
fi
