#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from chagall-common
include device/samsung/chagall-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/chagalllte

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := chagalllte

# Kernel
TARGET_KERNEL_CONFIG := lineageos_chagalllte_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/manifest.xml

# Legacy BLOB Support
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/vendor/bin/hw/rild=27

# Network Routing
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2202009600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm7260

# Shims
TARGET_LD_SHIM_LIBS += \
    /vendor/bin/gpsd|/vendor/lib/libshim_gps.so

# Inherit from the proprietary version
include vendor/samsung/chagalllte/BoardConfigVendor.mk
