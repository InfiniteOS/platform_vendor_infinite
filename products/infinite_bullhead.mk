#
# Copyright 2015 The InfiniteOS Project
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

PRODUCT_NAME := infinite_bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus5X
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/lge/bullhead/device-vendor.mk)
$(call inherit-product, vendor/infinite/config/common.mk)
