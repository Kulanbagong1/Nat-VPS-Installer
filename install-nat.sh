#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi

# xray service
aa="https://raw.githubusercontent.com/ozipoetra/mantapv2/main/data-xray.sh"
# sshws service
cc="https://raw.githubusercontent.com/ozipoetra/Mantap/main/install-nat.sh"

#installing script
wget ${aa} && chmod +x data-xray.sh && ./data-xray.sh
clear
wget ${cc} && chmod +x install-nat.sh && ./install-nat.sh

echo "Done! Rebooting..."
sleep 3
reboot

# clear installation files (soon)
# rm -r *.sh
