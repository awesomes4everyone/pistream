################################################################################
#
# pistream-node
#
################################################################################

#PISTREAM_NODE_VERSION = master
#PISTREAM_NODE_SITE = https://github.com/awesomes4everyone/pistream-node
#PISTREAM_NODE_SITE_METHOD = git
PISTREAM_NODE_SITE = /home/qfox/buildroot/package/pistream/pistream-node/pistream-node
#PISTREAM_NODE_OVERRIDE_SRCDIR = /home/qfox/buildroot/package/pistream/pistream-node/pistream-node
PISTREAM_NODE_SITE_METHOD = local
PISTREAM_NODE_DEPENDENCIES = nodejs #TODO: add all the wireless tools too!
PISTREAM_NODE_LICENSE = GPLv3
PISTREAM_NODE_LICENSE_FILES = COPYING

define PISTREAM_NODE_INSTALL_TARGET_CMDS
	$(NPM) install -g $(@D)
endef

$(eval $(generic-package))
