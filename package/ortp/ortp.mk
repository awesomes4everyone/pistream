################################################################################
#
# ortp
#
################################################################################

ORTP_VERSION = 1.0.1
ORTP_SOURCE = ortp-$(ORTP_VERSION).tar.gz
ORTP_SITE = http://www.linphone.org/releases/sources/ortp
#ORTP_CONF_OPTS = --disable-strict
ORTP_INSTALL_STAGING = YES
ORTP_LICENSE = LGPL-2.1+
ORTP_LICENSE_FILES = COPYING
ORTP_DEPENDENCIES = bctoolbox

$(eval $(cmake-package))
