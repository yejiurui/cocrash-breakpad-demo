ROOT_PATH := $(call my-dir)
include $(ROOT_PATH)/google_breakpad/breakpad/android/google_breakpad/Android.mk

LOCAL_PATH := $(ROOT_PATH)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocrash
LOCAL_SRC_FILES := native_breakpad.cpp
LOCAL_LDLIBS := -llog
LOCAL_STATIC_LIBRARIES += breakpad_client

include $(BUILD_SHARED_LIBRARY)
