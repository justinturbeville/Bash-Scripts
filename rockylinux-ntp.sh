#!/bin/bash

yum install chrony -y
systemctl start chronyd
systemctl enable chronyd
firewall-cmd --add-service=ntp --permanent --zone=public

# You have to modify /etc/chrony.conf to configure
# chrony to allow access to your time server and
# add your own/custom NTP servers such
# as nist.gov NTP servers.
# use the format bellow and comment out the existing entry.
#server 129.6.15.28 iburst


# After changing chrony.conf use the command 
# 'systemctl restart chronyd' to restart the service.
# 'chronyc sources' and 'chronyc serverstats' are
# useful commands.
