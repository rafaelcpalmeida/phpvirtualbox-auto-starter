#! /bin/sh
# /etc/init.d/VMManager

VMUSER=vbox
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
                echo "Usage: /etc/init.d/StartVM {start|stop}"
                exit 1
        ;;
esac

exit 0
