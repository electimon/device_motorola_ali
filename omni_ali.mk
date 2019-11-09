#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/motorola/ali/device.mk)

# Device identifiers
PRODUCT_DEVICE := ali
PRODUCT_NAME := lineage_ali
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto g(6)
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := ali

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=ali

BUILD_FINGERPRINT := motorola/ali/ali:9/PPS29.55-24/a37fd:user/release-keys

# TWRP TODO implement twrp
ifeq ($(WITH_TWRP),true)
    $(call inherit-product, device/motorola/ali/twrp/twrp.mk)
else
    TARGET_RECOVERY_FSTAB := device/motorola/ali/rootdir/etc/fstab.qcom
endif

