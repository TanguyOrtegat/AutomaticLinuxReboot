# AutomaticLinuxReboot
show how to reboot your server each ... hours or days. This alos creates log files of your rebooted server.

#Attention: les syntaxes utilisées sont compatibles Debian 8, je n'ai pas tester sous d'autres distributions Linux.

# Script
```bash
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
```
# Note
Change into reload_fxserver.sh:
- /home/FxServer/fx-server-data/cache  --> your directory of cache

Change into RunFxServer.sh:
- FXSERVERDATA --> your server data folder
- FXSERVER --> server folfer

the server will launch in a screen to open the screen while it is rebooted go to terminal and type: 'screen -r'

# Adding automatic reboot
To access cromtab enter following command while being in root: 'crontab -e'

*This example server will reboot at midday (12h) and midnight(00h)*

```bash
00 12 * * * /home/FxServer/reload_fxserver.sh >> /var/log/fxreload/fxreloadlog
00 00 * * * /home/FxServer/reload_fxserver.sh >> /var/log/fxreload/fxreloadlog
```

*To see if crontab is registred:* 'crontab -l'

# create log files
While being in root entrer following commands:.
```
mkdir /var/log/fxreload
chown -R root:root /var/log/fxreload/        (change root to your computer user)
```

Copy and paste fxreload into /etc/logrotate.d/  directory

*To verify you installed it correclty enter command: 'cat /etc/logrotate.d/fxreload'*

# To see your log files:
```
cat /var/log/fxreload/fxreloadlog
```

# Conclusion
Now your server will start each day at midday and midnight with log files
