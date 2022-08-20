#!/bin/sh

set -x
set -e

#Connect to the Nanostation Using the SSH.

sudo apt-get install sshpass

sshpass -p ${SSH_PASS} ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOST_IP} << EOF

    sudo apt install network-manager -y

    #Checking if wifi radio is on

    export status=$(nmcli radio wifi)

    if [ $status =="enabled" ]
        then
            echo "Wifi working"
        else
            echo "Turning on Wifi"
            nmcli radio wifi on
    fi


    nmcli dev wifi connect ${DEVICE_NAME} password "${DEVICE_PASS}"

EOF




