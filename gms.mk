#
# Copyright (C) 2022 The LeafOS Project
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

## Apps
PRODUCT_PACKAGES += \
    GmsCore \
    GoogleCalendarSyncAdapter \
    GoogleContactsSyncAdapter \
    GooglePartnerSetup \
    GoogleRestore \
    GoogleServicesFramework \
    Phonesky \
    SetupWizard \
    Wellbeing

## FS Verity
PRODUCT_COPY_FILES += \
    vendor/gapps/etc/security/fsverity/gms_fsverity_cert.der:$(TARGET_COPY_OUT_PRODUCT)/etc/security/fsverity/gms_fsverity_cert.der

## Libraries
PRODUCT_PACKAGES += \
    com.google.android.dialer.support

## Overlays
PRODUCT_PACKAGES += \
    GmsOverlay

## Permissions
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.xml,vendor/gapps/etc/default-permissions,$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions) \
    $(call find-copy-subdir-files,*.xml,vendor/gapps/etc/permissions/product,$(TARGET_COPY_OUT_PRODUCT)/etc/permissions) \
    $(call find-copy-subdir-files,*.xml,vendor/gapps/etc/permissions/system_ext,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions)

## Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/gapps/overlay

## Sysconfig
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.xml,vendor/gapps/etc/sysconfig,$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig)
