##############################################################
#
# LDD 
# File uses Module_SUBDIRS to add the modules 
#
##############################################################

LDD_VERSION = 'c732d94f9fa15c6681451d4db9996183c34efbf3'

LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Ganeshkm10.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/

define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
