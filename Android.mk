ifeq ($(TARGET_ENABLE_SMARTCARD_SERVICE),true)
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_AIDL_INCLUDES := $(LOCAL_PATH)/openmobileapi/src/org/simalliance/openmobileapi/service

LOCAL_PACKAGE_NAME := SmartcardService
LOCAL_CERTIFICATE := platform

LOCAL_JAVA_LIBRARIES := org.simalliance.openmobileapi com.android.qcom.nfc_extras com.vzw.nfc

LOCAL_PROGUARD_ENABLED := disabled

# Enable dexpreopt to speed boot time
WITH_DEXPREOPT := true

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
