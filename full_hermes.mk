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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/hermes/device.mk)

# Release name
PRODUCT_RELEASE_NAME := xiaomi hermes

PRODUCT_DEVICE := hermes
PRODUCT_NAME := full_hermes
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 2
PRODUCT_MANUFACTURER := xiaomi

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

# LANGUAGE
PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
