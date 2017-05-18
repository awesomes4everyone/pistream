################################################################################
#
# rx
#
################################################################################

RX_VERSION = f7834bd5d56ccfc2f86fe1072e9b80df93275327
RX_SITE = $(call github,awesomes4everyone,trx,$(RX_VERSION))
RX_LICENSE = GPLv2.0
RX_LICENSE_FILES = COPYING
RX_INSTALL_TARGET = YES
RX_DEPENDENCIES = alsa-lib opus ortp


define RX_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) rx
endef

define RX_INSTALL_TARGET_CMDS 
	$(INSTALL) -D -m 755 $(@D)/rx $(TARGET_DIR)/usr/bin
	#TODO: make init script depend on init system
	$(INSTALL) -D -m 755 package/rx/rx-up $(TARGET_DIR)/etc/network/if-up.d/rx-up
endef

$(eval $(generic-package))
