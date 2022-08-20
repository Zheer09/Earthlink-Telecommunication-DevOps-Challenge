#!/bin/sh

set -x
set -e

#Connect to the Nanostation Using the SSH.

sudo apt-get install sshpass

sshpass -p ubnt ssh -o StrictHostKeyChecking=no ubnt@${HOST_IP}



	

#Save the configuration and restart the Device

cfgmtd -f /tmp/system.cfg -w
/usr/etc/rc.d/rc.softrestart save



