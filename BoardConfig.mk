USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/blade2/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := blade2

#TARGET_KERNEL_SOURCE := kernel/zte/blade2
#TARGET_KERNEL_CONFIG := cyanogen_blade2_p736v_defconfig

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x02600000
BOARD_PAGE_SIZE := 0x00000800
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0dc00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a280000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_DATA_DEVICE := /dev/block/mtdblock6
BOARD_DATA_FILESYSTEM := auto
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock5
BOARD_SYSTEM_FILESYSTEM := auto
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mtdblock4
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

TARGET_PREBUILT_KERNEL := device/zte/blade2/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/zte/blade2/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/blade2/recovery_ui.c
TARGET_RECOVERY_INITRC := device/zte/blade2/recovery.rc

BOARD_HAS_FLIPPED_SCREEN := true
#BOARD_TOUCH_RECOVERY := true
