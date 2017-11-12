#!/bin/bash
echo "***********************************************************"
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting procedure..."
sleep 2
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Stopping server..."
pkill screen
sleep 10
echo `date '+%d-%B-%Y_%H:%M:%S'`" - Restart mysql service..."
sudo service mysql restart
sleep 10
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Emptying cache..."
rm -R /home/GTA5ESXTEST/fx-server-data/cache
sleep 5
echo `date '+%d-%B-%Y_%H:%M:%S'` " - Starting server..."
screen -L -d -m bash /root/RunServerESXTEST.sh
sleep 15
echo `date '+%d-%B-%Y_%H:%M:%S'` " - End procedure"
