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

ARGET_PLATFORM := android-19
LOCAL_MODULE    := avnc
LOCAL_C_INCLUDES := \
	$(LIBVNCSERVER_INCLUDE) \
	$(LIBVNCSERVER_INCLUDE)/.. 
LOCAL_SRC_FILES := ../../src/main.c 
LOCAL_CFLAGS := -O2 #-g #-Wl,--add-stdcall-alias #-Wl,--kill-at 
LOCAL_SHARED_LIBRARIES := liblog libcutils libutils libdl
LOCAL_STATIC_LIBRARIES := libjpeg-turbo libvncserver
LOCAL_MODULE_TAGS := optional
#LOCAL_CFLAGS += -DDEBUG -g
include $(BUILD_EXECUTABLE)

