2011-10-29 0.1
  * initial release
2011-11-07 0.2
    * add "which" package (required for makepkg)
    * add go_build.sh
    * go_build.sh:
        * mounts system directories to $INSTALLDIR
        * chroots into $INSTALLDIR, running setup_chroot.sh
        * setup_chroot.sh:
            * runs ldconfig
            * sets $PS1 to indicate we are chrooted
        * upon exit from chroot, system directories are unmounted       
2012-12-09 0.3
  * copy /etc/resolv.conf to $INSTALLDIR/etc/
    to enable DNS lookups inside the build environment
  * add missing Subversion dependencies
  * added packages:
    * apr
    * apr-util
    * cyrus-sasl
    * gperf
    * neon
    * sqlite