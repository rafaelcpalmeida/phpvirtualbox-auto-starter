#!/bin/bash
# /etc/init.d/VMBacker.sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Change vbox to your virtualbox user
VMUSER=vbox
#Insert your virtual machines in here. The pattern is 'VM Name'space'VM Name', like this 'VM1' 'VM2' 'VM3'
declare -a VM=('VirtualBox-Name')

now=$(date +'%d/%m/%Y')

case "$1" in
        back)
                echo "Snapshoting VirtualBox VM..."
                cd
                echo "Available VM's: ${VM[@]}"
                for i in "${VM[@]}"
                do
                       su $VMUSER /usr/bin/VBoxManage snapshot "$i" take "$now"
                done
                sleep 3
        ;;
        *)
                echo "Usage: /etc/init.d/VMBacker.sh {back}"
                exit 1
        ;;
esac

exit 0
