#!/bin/sh
# setup_chroot.sh
# copied to chroot dir, and executed on login
ldconfig
source /etc/profile
export PS1='\u@[buildenv]:\w\$ '
bash