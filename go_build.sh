#!/bin/bash
source /boot/config/plugins/buildenv/buildenv.cfg
/etc/rc.d/rc.buildenv start
chroot ${INSTALLDIR} /bin/setup_chroot.sh
/etc/rc.d/rc.buildenv stop