# Set HelloOS specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common HelloOS stuff
$(call inherit-product, vendor/hello/config/common_full_phone.mk)
