# phpVirtualBox Auto Starter
This Shell script allows you to automatically start your VirtualBox instances when your computer starts.

Original script: http://askubuntu.com/a/122641/372524

#### Usage:

$ sudo vi /etc/init.d/VMManager

Copy the content from the VMManager.sh file

$ sudo chmod +x /etc/init.d/VMManager

$ sudo update-rc.d VMManager defaults 99 01
