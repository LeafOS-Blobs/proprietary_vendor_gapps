#
# Copyright (C) 2022-2023 The LeafOS Project
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

ifeq ($(WITH_GMS), true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCalendarSyncAdapter
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContactsSyncAdapter
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleRestorePrebuilt
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleServicesFramework
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := PartnerSetupPrebuilt
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := Phonesky
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := PrebuiltGmsCore
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := SetupWizardPrebuilt
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Provision
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := WellbeingPrebuilt
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.dialer.support
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_PRODUCT_MODULE := true
include vendor/gapps/build/gms_module.mk
endif # WITH_GMS
