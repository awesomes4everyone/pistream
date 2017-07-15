#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
#tty1::respawn:/bin/sh # HDMI console' ${TARGET_DIR}/etc/inittab
fi

#move the wireless service script
cp ${TARGET_DIR}/bin/wireless.js ${TARGET_DIR}/volumio/app/plugins/system_controller/network/wireless.js
