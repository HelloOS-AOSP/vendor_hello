# Set HelloOS specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common HelloOS stuff
$(call inherit-product, vendor/hello/config/common_mini_phone.mk)
