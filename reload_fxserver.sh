#!/bin/bash
echo "***********************************************************"
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting procedure..."
sleep 1
echo `date '+%d-%B-%Y_%H:%M:%S'` " - killing screen game server..."
screen -X -S "Game Server" kill
sleep 1
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Emptying cache..."
rm -R /home/fairyV3/fx-server-data/cache
sleep 5
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server..."
screen -S "Game Server" -L ServerLog/`date '+%Y-%m-%d_%H:%M:%S'.txt` -d -m bash /root/RunServer.sh
sleep 15
echo `date '+%d-%B-%Y_%H:%M:%S'` " - End procedure"
