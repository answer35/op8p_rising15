#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 865" \
    RisingMaintainer="answer35"

# Extras
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8Pro-user 13 RKQ1.211119.001 Q.1870b9f-4227_f18b release-keys" \
    BuildFingerprint=OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.1870b9f-4227_f18b:user/release-keys \
    DeviceName=OnePlus8Pro \
    DeviceProduct=OnePlus8Pro \
    SystemDevice=OnePlus8Pro \
    SystemName=OnePlus8Pro
