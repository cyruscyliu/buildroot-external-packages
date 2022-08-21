################################################################################
#
# kernel_module
#
################################################################################

KERNEL_MODULE_VERSION = 1.0
KERNEL_MODULE_SITE = $(BR2_EXTERNAL_EXTERNAL_PACKAGES_PATH)/package/kernel_module
KERNEL_MODULE_SITE_METHOD = local
KERNEL_MODULE_LINUX_LICENSE = GPL-2.0
KERNEL_MODULE_LINUX_LICENSE_FILES = COPYING

$(eval $(kernel-module))
$(eval $(generic-package))
