## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := cp5310

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/cp5310/device_cp5310.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp5310
PRODUCT_NAME := cm_cp5310
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := cp5310
PRODUCT_MANUFACTURER := coolpad
