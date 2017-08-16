################################################################################
#
# LIBRESPOT
#
################################################################################

#LIBRESPOT_VERSION = master
#LIBRESPOT_SITE = https://github.com/plietar/librespot
#LIBRESPOT_SITE_METHOD = git
#LIBRESPOT_DEPENDENCIES = 
#LIBRESPOT_LICENSE = GPLv3
#LIBRESPOT_LICENSE_FILES = COPYING

#define LIBRESPOT_EXTRACT_CMDS
#	rm -rf $(@D)
#	(git clone --depth 1 $(LIBRESPOT_SITE) $(@D) && \
#	cd $(@D)/externals && \
#	git submodule update --init --recursive)
#	touch $(@D)/.stamp_downloaded
#endef

#define LIBRESPOT_BUILD_CMDS
#	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)/client TARGET=BUILDROOT
#endef

define LIBRESPOT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(LIBRESPOT_PKGDIR)/librespot $(TARGET_DIR)/usr/bin/librespot
endef

$(eval $(generic-package))
