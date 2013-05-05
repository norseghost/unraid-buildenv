rm -f /usr/local/bin/go_build.sh
rm -f /boot/config/plugins/buildenv/packages.list
rm -f /boot/config/plugins/buildenv/setup_chroot.sh
[ -f /etc/rc.d/rc.buildenv ] && /etc/rc.d/rc.buildenv stop
rm -f /etc/rc.d/rc.buildenv

rm -f -R /usr/local/emhttp/plugins/buildenv

rm /tmp/buildenv-cleanup