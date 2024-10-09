# Inherit mobile full common HelloOS stuff
$(call inherit-product, vendor/hello/config/common_mobile_full.mk)

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true

$(call inherit-product, vendor/hello/config/telephony.mk)
