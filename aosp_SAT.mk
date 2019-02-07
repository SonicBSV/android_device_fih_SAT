# 
# Copyright (C) 2017-2019 The LineageOS Project
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

# Boot animation
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from SAT device
$(call inherit-product, device/sharp/SAT/device.mk)

# Inherit some common PE stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.aosp.build.vendor_security_patch=2018-10-01

PRODUCT_BRAND := Sharp
PRODUCT_DEVICE := SAT
PRODUCT_MANUFACTURER := FIH
PRODUCT_NAME := aosp_SAT
PRODUCT_MODEL := Aquos S2

PRODUCT_GMS_CLIENTID_BASE := android-hmd

TARGET_VENDOR := Sharp

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SH-Z01_00E0-user 8.0.0 OPR1.170623.027 00E0_2_140 release-keys" \
    TARGET_DEVICE="SAT" \
    DEVICE_MAINTAINERS="SonicBSV"
    
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := SHARP/SH-Z01_00E0/SH-Z01:8.0.0/OPR1.170623.027/00E0_2_140:user/release-keys
