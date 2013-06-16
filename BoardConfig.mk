
# inherit from the proprietary version
-include vendor/zte/elden/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH += device/zte/elden/include

#TARGET_PROVIDES_INIT_RC := true

# General
TARGET_BOOTLOADER_BOARD_NAME := elden
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_FPU := neon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno225
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

BOARD_CDMA_NETWORK := true

TARGET_HAVE_TSLIB := false
TARGET_USES_POST_PROCESSING := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
QCOM_TARGET_PRODUCT := msm8960
BOARD_USE_QCOM_PMEM := true
TARGET_USES_QCOM_LPA := true
TARGET_USES_QCOM_BSP := true

COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DUSE_QMI

###

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_ION_AUDIO := true
BOARD_USES_SRS_TRUEMEDIA := true
BOARD_USES_FLUENCE_INCALL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR :=

# Camera
V4L2_BASED_LIBCAM := true
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Display/Graphics
BOARD_EGL_CFG := device/zte/elden/prebuilts/lib/egl/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_OVERLAY := true
TARGET_HARDWARE_3D := true
TARGET_QCOM_HDMI_OUT := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# HWComposer
BOARD_USES_HWCOMPOSER := true
TARGET_NO_HW_VSYNC := true

# JIT / Optimizations
WITH_DEXPREOPT := true
JS_ENGINE := v8

# Power

# Sensors

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

# Wifi
# HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_SOFTAP_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_NAME :=  "wlan"
WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
#WIFI_DRIVER_FW_PATH_P2P := ?
#WIFI_DRIVER_FW_PATH_PARAM := ?
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

###

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 loglevel=7 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/zte/elden/kernel
TARGET_KERNEL_CONFIG := msm8960-elden_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Krait optimization
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Parttions/filesystem
# Get values by examining /proc/partitions on a running device & multiply by 1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 480018432
BOARD_CACHEIMAGE_PARTITION_SIZE := 318767104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2793406464
BOARD_PERSISTIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/vold/179:32

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/elden/recovery/kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/elden/recovery/graphics.c

# USB
BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/elden/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# default props
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

#TARGET_PROVIDES_RELEASETOOLS := true
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT :=
