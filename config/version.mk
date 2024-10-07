HELLO_DATE_YEAR := $(shell date -u +%Y)
HELLO_DATE_MONTH := $(shell date -u +%m)
HELLO_DATE_DAY := $(shell date -u +%d)
HELLO_DATE_HOUR := $(shell date -u +%H)
HELLO_DATE_MINUTE := $(shell date -u +%M)
HELLO_BUILD_DATE_UTC := $(shell date -d '$(HELLO_DATE_YEAR)-$(HELLO_DATE_MONTH)-$(HELLO_DATE_DAY) $(HELLO_DATE_HOUR):$(HELLO_DATE_MINUTE) UTC' +%s)
HELLO_BUILD_DATE := $(HELLO_DATE_YEAR)$(HELLO_DATE_MONTH)$(HELLO_DATE_DAY)-$(HELLO_DATE_HOUR)$(HELLO_DATE_MINUTE)

HELLO_DISPLAY_VERSION := 2.0

HELLO_VERSION := v$(HELLO_DISPLAY_VERSION)-$(HELLO_BUILD)-$(HELLO_PLATFORM_VERSION)-$(HELLO_BUILD_DATE)

# HelloOS Platform Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.hello.build.date=$(BUILD_DATE) \
    ro.hello.device=$(HELLO_BUILD) \
    ro.hello.fingerprint=$(ROM_FINGERPRINT) \
    ro.hello.version=$(HELLO_VERSION) \
    ro.modversion=$(HELLO_VERSION)

# Signing
-include vendor/hello-priv/keys/keys.mk
