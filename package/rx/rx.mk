################################################################################
#
# rx
#
################################################################################

RX_VERSION = 16a2c2bbbf2c9fa5ac5cec3458df69d9f82686c7
RX_SITE = $(call github,awesomes4everyone,trx,$(RX_VERSION))
RX_LICENSE = GPLv2.0
RX_LICENSE_FILES = COPYING
RX_INSTALL_TARGET = YES
RX_DEPENDENCIES = alsa-lib opus ortp


define RX_BUILD_CMDS
	$(MAKE) CC=$(TARGET_CC) LD=$(TARGET_LD) -C $(@D) rx
endef

define RX_INSTALL_TARGET_CMDS 
	$(INSTALL) -D -m 755 $(@D)/rx $(TARGET_DIR)/usr/bin
	#TODO: make init script depend on init system
	$(INSTALL) -D -m 755 package/rx/rx-up $(TARGET_DIR)/etc/network/if-up.d/rx-up
endef

$(eval $(generic-package))
