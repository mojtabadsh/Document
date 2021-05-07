#!/bin/bash

FOUND=$(ip ad sh | grep -i inet6)
echo -e "Disable ipv6 and update grub\n"
if [ -z "$FOUND" ]; then
      echo "ipv6 is already disabled, nothing to do."
      return
fi
echo "ipv6 is enabled, trying to disable it..."
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="[^"]*/& ipv6.disable=1/' '/etc/default/grub'
sudo update-grub
echo "ipv6 is disabled successfully"

