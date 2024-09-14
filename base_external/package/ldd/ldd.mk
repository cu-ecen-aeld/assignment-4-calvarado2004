################################################################################
#
# ldd Makefile for Buildroot
#
################################################################################

LDD_VERSION = 4beaa26
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-calvarado2004.git
LDD_INSTALL_TARGET = YES
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull
LDD_MODULE_SUBDIRS += misc-modules

LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
