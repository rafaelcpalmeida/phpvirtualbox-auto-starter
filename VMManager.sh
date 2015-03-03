#!/bin/bash
# /etc/init.d/VMManager

#Change vbox to your virtualbox user
VMUSER=vbox
#Insert your virtual machines in here. The pattern is 'VM Name'*space*'VM Name', like this 'VM1' 'VM2' 'VM3'
declare -a VM=('VirtualBox-Name');

case "$1" in
        start)
                echo "Starting VirtualBox VM..."
                cd
                echo "Available VM's: ${VM[@]}"
                for i in "${VM[@]}"
                do
                        sudo -H -b -u $VMUSER /usr/bin/VBoxManage startvm "$i" --type headless
                done
                sleep 3
        ;;
        stop)
                echo "Saving state of Virtualbox VM..."
                for i in "${VM[@]}"
                do
                        sudo -H -u $VMUSER /usr/bin/VBoxManage controlvm "$i" savestate
                done
                sleep 3
        ;;
        *)
                echo "Usage: /etc/init.d/VMManager {start|stop}"
                exit 1
        ;;
esac

exit 0
