# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/hisense/m470/device.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_m470
PRODUCT_DEVICE := m470
PRODUCT_BRAND := Hisense
# Don't restrict vendor folder
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_MODEL := AOSP on Sero7pro

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m470 BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JWR66V/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JWR66V 573038 release-keys"
