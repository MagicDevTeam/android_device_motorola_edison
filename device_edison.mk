#
# This is the product configuration for a full edison
#

-include device/motorola/edison/BuildConfig.mk

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
#    DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay/aosp
DEVICE_PACKAGE_OVERLAYS += device/motorola/edison/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
    
PRODUCT_PACKAGES := \
    charger \
    charger_res_images

PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \
    parse_hdmi_edid \
    libedid 

        #hwcomposer.omap4 \
    #hwcomposer.default \
PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy 
    
     #libasound 
    #libaudiopolicy_legacy
    #audio.primary.edison \
    #audio_policy.default \
    #audio_policy.edison

# BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += \
    audio.a2dp.default
    
# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

    # Tiler
PRODUCT_PACKAGES += \
    libtimemmgr
    
# Modem
PRODUCT_PACKAGES += \
    Stk \
    libaudiomodemgeneric \
    rild \
    radiooptions \
    sh \
    nc 
    #libreference-cdma-sms \

# Wifi
#    wlan_loader \
#    wlan_cu \
#    tiwlan.ini
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    crda \
    regulatory.bin \
    calibrator \
    busybox

# Wifi Direct
PRODUCT_PACKAGES += \
    ti_wfd_libs \
    ti-wpan-fw
    #lib_driver_cmd_wl12xx \
    #wpa_supplicant.conf \

# HotSpot
#PRODUCT_PACKAGES += \
#    tiap_loader \
#    tiap_cu \
#    hostap \
#    hostapd.conf 

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    BluetoothSCOApp 
    #uim-sysfs 

# Release utilities
#PRODUCT_PACKAGES += \
#    edison_releaseutils-check_kernel \
#    edison_releaseutils-finalize_release \
#    edison_releaseutils-mke2fs \
#    edison_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    Superuser \
    su \
    DockAudio \
    Camera \
    camera_test \
    CameraOMAP4 

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    Gallery2 \
    FileExplorer

#PRODUCT_PACKAGES += \
#    TIInit_7.2.31.bts \
#    TIInit_7.6.15.bts
    
# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/edison/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# copy all vendor (motorola) kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/edison/lib/modules &&  \
	find vendor/motorola/edison/lib/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# copy all others kernel modules under the "modules" directory to system/lib/modules
#PRODUCT_COPY_FILES += $(shell test -d device/motorola/edison/modules && \
#	find device/motorola/edison/modules -name '*.ko' \
#	-printf '%p:system/lib/modules/%f ')


    
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/edison/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
#$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, device/motorola/edison/omap4.mk)
#$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)



$(call inherit-product, device/motorola/edison/device_edison-blobs.mk)

$(call inherit-product, device/motorola/edison/bootmenu/bootmenu.mk)

#$(call inherit-product-if-exists, vendor/verizon/edison-leak-verizon-vendor.mk)
#$(call inherit-product-if exists, device/ti/proprietary-open/wl12xx/wlan/wl12xx-wlan-fw-products.mk)
$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor.mk)


#ifeq ($(PRODUCT_TARGET_CN_BUILDING),true)
#$(call inherit-product-if-exists, vendor/motorola/edison/ducati-full_moto_edison_cn.mk)
#$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-blobs_cn.mk)
#else
#$(call inherit-product-if-exists, vendor/motorola/edison/ducati-full_moto_edison.mk)
#$(call inherit-product-if-exists, vendor/motorola/edison/edison-vendor-blobs.mk)
#endif


$(call inherit-product-if-exists, vendor/google/gapps.mk)

# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_edison
PRODUCT_DEVICE := edison
