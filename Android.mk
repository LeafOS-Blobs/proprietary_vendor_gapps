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
LOCAL_MODULE := GmsCore
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCalculator
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := ExactCalculator
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCalendar
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Etar
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCalendarSyncAdapter
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleChrome
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := TrichromeChrome6432
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContacts
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Contacts
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleContactsSyncAdapter
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleDeskClock
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OEVRRIDES_PACKAGES := DeskClock
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleDialer
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Dialer
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleDrive
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := MuPDF
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleMessaging
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := messaging
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GooglePartnerSetup
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GooglePhotos
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Gallery2
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleRestore
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
LOCAL_MODULE := LatinIMEGoogle
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := LatinIME
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := Phonesky
LOCAL_MODULE_CLASS := APPS
LOCAL_PRODUCT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := SetupWizard
LOCAL_MODULE_CLASS := APPS
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Provision
include vendor/gapps/build/gms_module.mk

include $(CLEAR_VARS)
LOCAL_MODULE := Wellbeing
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
