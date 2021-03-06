#
# Copyright (C) 2022 The OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := vince

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
#PRODUCT_PACKAGES += \
#    libcryptfs_hw

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_vince
PRODUCT_DEVICE := vince
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi

TARGET_VENDOR_PRODUCT_NAME := vince
TARGET_VENDOR_DEVICE_NAME := vince
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=vince \
    BUILD_PRODUCT=vince \
    PRODUCT_NAME=vince
