LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Explicitly mark perf as "eng" so that it doesn't
# get included in user or SDK builds. (GPL issues)
#

LOCAL_MODULE_TAGS := debug

#include $(BUILD_PREBUILT)

LOCAL_PREBUILT_EXECUTABLES := perf
LOCAL_PREBUILT_LIBS :=  libebl_arm.so

include $(BUILD_MULTI_PREBUILT)

LOCAL_SHARED_LIBRARIES := libebl_arm

# Any prebuilt files with default TAGS can use the below:
prebuilt_files :=

$(call add-prebuilt-files, EXECUTABLES, $(prebuilt_files))
