#!/bin/bash

# You have to modify /etc/selinux/config by changing 
# 'SELINUX=enforcing' to 'SELINUX=permissive' and then adding 
# 'export PIHOLE_SELINUX=TRUE' to the end of the file.
# After which reboot the host then run this script.

yum install epel-release -y
yum install lighttpd lighttpd-fastcgi -y
yum update -y
firewall-cmd --add-port=80/tcp --permanent --zone=public
firewall-cmd --add-port=53/udp --permanent --zone=public
firewall-cmd --reload
curl -sSL https://install.pi-hole.net | PIHOLE_SKIP_OS_CHECK=true sudo -E

# Use the command 'pihole -a -p' to change the password
# Then you peridically you can run the command 
# 'pihole -up' to update pihole and its block lists