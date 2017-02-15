# x2xtreme boardconfig
LOCAL_PATH := device/xiaomi/hermes
include device/mediatek/mt6795-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true
TARGET_PROVIDES_INIT_RC := true

# MTK Hardware
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))

COMMON_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
COMMON_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

# Kernel
TARGET_PREBUILT_KERNEL :=~/dev/lineage/device/xiaomi/hermes/kernel

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# make_ext4fs requires numbers in dec format
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1240465408
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# System properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
