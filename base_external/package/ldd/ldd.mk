################################################################################
#
# ldd Makefile for Buildroot
#
################################################################################

LDD_VERSION = ad691a8
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-calvarado2004.git
LDD_INSTALL_TARGET = YES
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_BUILD_CMDS
	$(MAKE) -C $(LDD_SITE) clean all
endef

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0775 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
