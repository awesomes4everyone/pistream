################################################################################
#
# djmount
#
################################################################################

DJMOUNT_VERSION = b4ef6638dcd47703079f1d55519dbfdad44b9cee
DJMOUNT_SOURCE = djmount-$(DJMOUNT_VERSION).tar.gz
DJMOUNT_SITE = $(call github,Boxee,djmount,$(DJMOUNT_VERSION))
DJMOUNT_INSTALL_STAGING = NO
DJMOUNT_INSTALL_TARGET = YES
#DJMOUNT_CONF_OPTS = --disable-shared
DJMOUNT_DEPENDENCIES = libfuse

$(eval $(autotools-package))
