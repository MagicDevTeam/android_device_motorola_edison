# Audio - use stock ICS leak files for now
PRODUCT_COPY_FILES += \
    device/motorola/edison/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/edison/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/edison/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/edison/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/edison/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \
    device/motorola/edison/audio/librds_util.so:/system/lib/librds_util.so \
    device/motorola/edison/audio/libril_rds.so:/system/lib/libril_rds.so
    
    # Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml 

    # Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/bin/battd:system/bin/battd \
    device/motorola/edison/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/edison/prebuilt/bin/strace:system/bin/strace \
    device/motorola/edison/prebuilt/bin/finalize_release:system/bin/finalize_release \
    device/motorola/edison/prebuilt/bin/uim-sysfs:system/bin/uim-sysfs \
    device/motorola/edison/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/edison/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/edison/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/edison/prebuilt/usr/idc/evfwd.idc:system/usr/idc/evfwd.idc \
    device/motorola/edison/prebuilt/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
    device/motorola/edison/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/motorola/edison/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/motorola/edison/prebuilt/usr/keychars/evfwd.kcm:system/usr/keychars/evfwd.kcm \
    device/motorola/edison/prebuilt/usr/keychars/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
    device/motorola/edison/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/motorola/edison/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/motorola/edison/prebuilt/usr/keychars/kbd_br_abnt2.kcm:system/usr/keychars/kbd_br_abnt2.kcm \
    device/motorola/edison/prebuilt/usr/keychars/kbd_ca_fr.kcm:system/usr/keychars/kbd_ca_fr.kcm \
    device/motorola/edison/prebuilt/usr/keychars/kbd_latam_basic.kcm:system/usr/keychars/kbd_latam_basic.kcm \
    device/motorola/edison/prebuilt/usr/keychars/kbd_us_basic.kcm:system/usr/keychars/kbd_us_basic.kcm \
    device/motorola/edison/prebuilt/usr/keychars/kbd_us_intl.kcm:system/usr/keychars/kbd_us_intl.kcm \
    device/motorola/edison/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/edison/prebuilt/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/edison/prebuilt/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl \
    device/motorola/edison/prebuilt/usr/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    device/motorola/edison/prebuilt/usr/keylayout/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
    device/motorola/edison/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/motorola/edison/prebuilt/usr/keylayout/atmxt-i2c.kl:system/usr/keylayout/atmxt-i2c.kl \
    device/motorola/edison/prebuilt/usr/keylayout/usb_keyboard_102_en_us.kl:system/usr/keylayout/usb_keyboard_102_en_us.kl \
    device/motorola/edison/prebuilt/usr/keylayout/Vendor_22b8_Product_0938.kl:system/usr/keylayout/Vendor_22b8_Product_0938.kl \
    device/motorola/edison/prebuilt/bin/battd:system/bin/battd \
    device/motorola/edison/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/edison/prebuilt/bin/strace:system/bin/strace \
    device/motorola/edison/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/edison/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/edison/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/edison/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/motorola/edison/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf 
    
   #device/motorola/edison/prebuilt/bin/hijack:system/bin/hijack \
   #device/motorola/edison/prebuilt/bin/hijack.log_dump:system/bin/hijack.log_dump \



# Phone settings
PRODUCT_COPY_FILES += \
    device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \
    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \

    
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \
    device/motorola/edison/prebuilt/lib/camera.omap4.so:system/lib/hw/camera.omap4.so \
    

PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/motorola/edison/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \
    
    
# Backup Tool
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    device/motorola/edison/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    device/motorola/edison/prebuilt/bin/50-backup.sh:system/addon.d/50-backup.sh

# prebuilt hwc
PRODUCT_COPY_FILES += \
    device/motorola/edison/hwc/hwcomposer.edison.so:system/vendor/lib/hw/hwcomposer.edison.so \
    device/motorola/edison/hwc/libedid.so:system/lib/libedid.so    

# Temporarily use prebuilt DOMX
# Prebuilts /system/lib
PRODUCT_COPY_FILES += \
    device/motorola/edison/prebuilt/lib/libdomx.so:/system/lib/libdomx.so \
    device/motorola/edison/prebuilt/lib/libmm_osal.so:/system/lib/libmm_osal.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
    device/motorola/edison/prebuilt/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
    device/motorola/edison/prebuilt/lib/libOMX_Core.so:/system/lib/libOMX_Core.so \
    
    
    # copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/edison/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

