# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# HelloOS System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.hello.build.date=$(BUILD_DATE) \
    ro.hello.device=$(HELLO_BUILD) \
    ro.hello.fingerprint=$(ROM_FINGERPRINT) \
    ro.hello.version=$(HELLO_VERSION) \
    ro.modversion=$(HELLO_VERSION)
