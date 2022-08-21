################################################################################
#
# userspace_program
#
################################################################################

USERSPACE_PROGRAM_VERSION = 1.0
USERSPACE_PROGRAM_SITE = $(BR2_EXTERNAL_EXTERNAL_PACKAGES_PATH)/package/userspace_program
USERSPACE_PROGRAM_SITE_METHOD = local
USERSPACE_PROGRAM_LICENSE = GPL-2.0
USERSPACE_PROGRAM_LICENSE_FILES = COPYING

define USERSPACE_PROGRAM_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define USERSPACE_PROGRAM_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/userspace_program $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
