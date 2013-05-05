#!/bin/sh
source /boot/config/plugins/buildenv/buildenv.cfg
if [ "$INSTALLED" = "yes" -a ! -e ${INSTALLDIR}/bin/which ]; then
    wget -rncH --cut-dirs=4  -P ${PACKAGEDIR} ftp://ftp.slackware.com/pub/slackware/slackware-13.1/slackware/a/which*.txz
    installpkg --root $INSTALLDIR ${PACKAGEDIR}/a/which*.txz
fi
cp -f /boot/config/plugins/buildenv/setup_chroot.sh ${INSTALLDIR}/bin
chmod a+x ${INSTALLDIR}/bin/setup_chroot.sh

rm -f /tmp/buildenv-upgrade.sh