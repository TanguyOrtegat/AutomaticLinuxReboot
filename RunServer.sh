#!/bin/bash

#config
FXSERVERDATA=/home/FxServer/fx-server-data
FXSERVER=/home/FxServer/fx-server

#script
echo `date '+%d-%B-%Y_%H:%M:%S'`" - launching server..."
sleep 2
cd $FXSERVERDATA
bash $FXSERVER/run.sh +exec server.cfg
