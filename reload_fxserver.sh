#!/bin/bash
echo "***********************************************************"
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server..."
sleep 2
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Stopping server..."
pkill screen
sleep 10
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Emptying cache..."
rm -R /home/FxServer/fx-server-data/cache
sleep 5
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server..."
screen -d -m bash /root/RunServer.sh
sleep 15
echo `date '+%d-%B-%Y_%H:%M:%S'` " - End procedure"