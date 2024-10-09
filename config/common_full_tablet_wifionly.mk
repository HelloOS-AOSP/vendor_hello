# Inherit mobile full common HelloOS stuff
$(call inherit-product, vendor/hello/config/common_mobile_full.mk)

# Inherit tablet common HelloOS stuff
$(call inherit-product, vendor/hello/config/tablet.mk)

$(call inherit-product, vendor/hello/config/wifionly.mk)
