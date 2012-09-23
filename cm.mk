# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/edison/device_edison.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay/cm


#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_edison
PRODUCT_BRAND := MOTO
PRODUCT_DEVICE := edison
PRODUCT_DEVICE_PREFIX := umts
PRODUCT_MODEL := MB865
PRODUCT_MANUFACTURER := Motorola
ifeq ($(PRODUCT_TARGET_CN_BUILDING),true)
PRODUCT_SFX := CN
else
PRODUCT_SFX := ATT
endif
ANDROID_VERSION := 4.1.1_r4
#MOTOROLA_BUILD_ID := 6.7.1-68_DHD-15_M4-16
MOTOROLA_BUILD_ID := JRO03C
MOTOROLA_SOFTWARE_VERSION := 6.14.84
DEVELOPER_NAME := Wanggjghost
DEVELOPER_HOST := www.591fan.com
DEVELOPMENT_STAGE := Beta
TARGET_BOOTANIMATION_NAME := vertical-540x960

# Release name and versioning
PRODUCT_RELEASE_NAME := MB865

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
ACT_DATE := $(shell date +%F/%R)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=${MOTOROLA_BUILD_ID} \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE_PREFIX}_${PRODUCT_DEVICE} \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   BUILD_DISPLAY_ID=JB_${DEVELOPMENT_STAGE}_${BUILD_ID} \
   PRODUCT_BRAND=${PRODUCT_BRAND} \
   BUILD_UTC_DATE= \
   USER=${DEVELOPER_NAME} \
   BUILD_HOST=${DEVELOPER_HOST} \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
  BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${TARGET_DEVICE}:${ANDROID_VERSION}/${BUILD_ID}/${BUILD_NUMBER}:${TARGET_BUJILD_TYPE}/${BUILD_VERSION_TAGS} \
  PRIVATE_BUILD_DESC=${TARGET_DEVICE}"-"${TARGET_BUJILD_TYPE}" "${ANDROID_VERSION}" "${BUILD_ID}" "${BUILD_NUMBER}" "${BUILD_VERSION_TAGS} 


