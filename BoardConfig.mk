
#Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

#Fallback architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

#Bootloader 
TARGET_BOOTLOADER_BOARD_NAME :=sdm660
TARGET_NO_BOOTLOADER := true

#Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0xc170000
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x37
BOARD_KERNEL_CMDLINE += user_debug=31
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1 
BOARD_KERNEL_CMDLINE += sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1 
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += loglevel=0 
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += buildvariant=userdebug 
BOARD_KERNEL_CMDLINE += veritykeyid=id:7e4333f9bba00adfe0ede979e28ed1920492b40f

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

BOARD_RAMDISK_OFFSET :=0x01000000

TARGET_KERNEL_CONFIG := nokia_defconfig
TARGET_KERNEL_SOURCE := kernel/nokia/sdm660

#Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USERDATAIMAGE_PARTITION_SIZE := 52873379328
TARGET_USERIMAGES_USE_EXT4 := true

#Platform
TARGET_BOARD_PLATFORM := sdm660

#TODO: search for this part
#Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
#BOARD_USES_RECOVERY_AS_BOOT := true
#TARGET_NO_RECOVERY := true
#TARGET_RECOVERY_DEVICE_DIRS += $(COMMON_PATH)
#TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_BLANK_UNBLANK_ON_INIT := true

#VNDK
BOARD_VNDK_VERSION := current

#SEPolicy - B2N
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/qcom/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/qcom/sepolicy/public

#Sepolicy - Common
include device/qcom/sepolicy-legacy-um/SEPolicy.mk

# Inherit from the proprietary version
include vendor/nokia/B2N/BoardConfigVendor.mk
