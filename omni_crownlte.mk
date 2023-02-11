#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from crownlte device
$(call inherit-product, device/samsung/crownlte/device.mk)

PRODUCT_DEVICE := crownlte
PRODUCT_NAME := omni_crownlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_crownlte-userdebug 13 TQ1A.230105.002 1673871884 release-keys"

BUILD_FINGERPRINT := samsung/crownlte/crownlte:13/TQ1A.230105.002/1224:userdebug/release-keys
