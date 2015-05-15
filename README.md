# phpVirtualBox Auto Starter
This Shell script allows you to automatically start your VirtualBox instances when your computer starts.

Original script: http://askubuntu.com/a/122641/372524

#### VMManager Usage:

$ sudo nano /etc/init.d/VMManager

Copy the content from the VMManager.sh file

$ sudo chmod +x /etc/init.d/VMManager

$ sudo update-rc.d VMManager defaults 99 01


#### VMBacker Usage:

$ sudo nano /etc/init.d/VMBacker.sh

Copy the content from the VMBacker.sh file

$ sudo chmod +x /etc/init.d/VMManager

$ crontab -e

0 8 * * * /etc/init.d/VMBacker.sh back
(Execute the script everyday at 8 p.m)

Save file!