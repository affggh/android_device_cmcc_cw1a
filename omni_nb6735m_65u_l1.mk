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

# Inherit from nb6735m_65u_l1 device
$(call inherit-product, device/alps/nb6735m_65u_l1/device.mk)

PRODUCT_DEVICE := nb6735m_65u_l1
PRODUCT_NAME := omni_nb6735m_65u_l1
PRODUCT_BRAND := alps
PRODUCT_MODEL := CMCC-CW1A
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_nb6735m_65u_l1-user 5.1 LMY47D 1524732848 test-keys"

BUILD_FINGERPRINT := alps/full_nb6735m_65u_l1/nb6735m_65u_l1:5.1/LMY47D/1524732848:user/test-keys
