#!/bin/bash

#config
HOST=149.91.81.207
PORT=30120

#script
echo "Checking server crash ..."
sleep 2
timeout 2 bash -c "</dev/tcp/$HOST/$PORT"; 

if [ $? -ne 0 ];
then
	echo "Detected server crash!"
	echo "launching server again:"
	bash /home/FxServer/reload_fxserver.sh
else
	echo "server up!"
fi
