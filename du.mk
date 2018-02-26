# Inherit some common Dirty stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-du.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:8.1.0/OPM1.171019.016/4503492:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM1.171019.016 4503492 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
