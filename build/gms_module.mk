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

define check-jni-dex-compression
endef

ifeq ($(LOCAL_MODULE_CLASS), APPS)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SDK_VERSION := current
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
endif
ifeq ($(LOCAL_MODULE_CLASS), JAVA_LIBRARIES)
LOCAL_SRC_FILES := $(LOCAL_MODULE).jar
endif

LOCAL_ENFORCE_USES_LIBRARIES := false

ifneq (,$(wildcard vendor/gapps/prebuilt/common/$(LOCAL_SRC_FILES)*))
LOCAL_SRC_FILES := $(wildcard vendor/gapps/prebuilt/common/$(LOCAL_SRC_FILES)*)
else
LOCAL_SRC_FILES := $(wildcard vendor/gapps/prebuilt/$(TARGET_ARCH)/$(LOCAL_SRC_FILES)*)
endif
LOCAL_SRC_FILES := $(shell echo $(LOCAL_SRC_FILES) | sed 's|^vendor/gapps/||g')

ifneq (,$(filter %.xz.001,$(LOCAL_SRC_FILES)))
include vendor/leaf/build/core/7z_prebuilt.mk
else
include $(BUILD_PREBUILT)
endif
