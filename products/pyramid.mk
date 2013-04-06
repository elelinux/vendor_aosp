# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/htc/pyramid/device_pyramid.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/gsm.mk)

# Pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/pyramid

# Setup device specific product configuration.
PRODUCT_NAME := xylon_pyramid
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := Sensation
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=htc_europe/htc_pyramid/pyramid:4.0.3/IML74K/309896.3:user/release-keys PRIVATE_BUILD_DESC="3.32.401.3 CL309896 release-keys"

# Copy i9100 specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

# Bootanimation
PRODUCT_COPY_FILES += \
   vendor/aosp/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

