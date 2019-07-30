LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

CVROOT := ~/OpenCV-android-sdk/sdk/native/jni/
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=SHARED
include $(CVROOT)/OpenCV.mk

LOCAL_MODULE += UsbCamera
LOCAL_SRC_FILES += UsbCamera.cpp

#LOCAL_LDLIBS := -llog -ljnigraphics

LOCAL_CFLAGS += -std=c++11 -frtti -fexceptions -fopenmp -w
LOCAL_LDLIBS += -llog -L$(SYSROOT)/usr/lib
LOCAL_LDFLAGS += -fopenmp

include $(BUILD_SHARED_LIBRARY)