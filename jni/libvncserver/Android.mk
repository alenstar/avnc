#
# Copyright 2009 Cedric Priscal
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
include $(LOCAL_PATH)/libvncserver.mk
LOCAL_MODULE    := libvncserver
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/$(LIBVNCSERVER_INCLUDE) \
	$(LOCAL_PATH)/$(LIBVNCSERVER_INCLUDE)/common \
	$(LOCAL_PATH)/$(LIBVNCSERVER_INCLUDE)/libvncserver \
	$(LOCAL_PATH)/../libjpeg-turbo/include \
	$(LOCAL_PATH)/../../ext/android-jpeg-turbo/jni/vendor/libjpeg-turbo/libjpeg-turbo-1.4.1 \

LOCAL_SRC_FILES := $(LIBVNCSERVER_SOURCES)
LOCAL_CFLAGS := -O2 #-g #-Wl,--add-stdcall-alias #-Wl,--kill-at 
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libdl libm
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)

