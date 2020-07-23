#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# for specific
$(call inherit-product, vendor/motorola/ali/ali-vendor.mk)
$(call inherit-product, device/motorola/ali/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/motorola/ali/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_NAME := revengeos_ali
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := ali
PRODUCT_MODEL := Moto G6
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_VENDOR_PRODUCT_NAME := ali_retail
TARGET_VENDOR_DEVICE_NAME := ali

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ali-user 8.1.0 OPPS28.85-13-2 d04a4 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/ali/ali:8.1.0/OPPS28.85-13-2/d04a4:user/release-keys
TARGET_VENDOR := motorola

# RevengeOS
IS_PHONE := true
REVENGEOS_BUILDTYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080

