#############################################################
#
# Volumio2
#
#############################################################
VOLUMIO2_VERSION = master
VOLUMIO2_SOURCE = $(VOLUMIO2_VERSION).tar.gz
VOLUMIO2_SITE = $(call github,awesomes4everyone,Volumio2,$(VOLUMIO2_VERSION))
VOLUMIO2_INSTALL_STAGING = NO
VOLUMIO2_DEPENDENCIES = nodejs

define VOLUMIO2_INSTALL_TARGET_CMDS
	$(NPM) update
	$(NPM) install -g --no-optional $(@D)
	mkdir -p $(TARGET_DIR)/volumio
	rsync -a $(TARGET_DIR)/usr/lib/node_modules/Volumio2/* $(TARGET_DIR)/volumio

endef

$(eval $(generic-package))
