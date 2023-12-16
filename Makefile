ARCHS=arm64
TARGET=iphone:16.5:14.0
ADDITIONAL_OBJCFLAGS = -fobjc-arc

export TARGET_CODESIGN_FLAGS="-Ssign.plist"

include $(THEOS)/makefiles/common.mk

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	PACKAGE_BUILDNAME := rootless
else
	PACKAGE_BUILDNAME := rootful
endif

TOOL_NAME = appknox_proxy
appknox_proxy_FILES = main.mm WiFiProxy.m
appknox_proxy_FRAMEWORKS = UIKit Foundation SystemConfiguration
# appknox_proxy_LDFLAGS = -undefined dynamic_lookup

include $(THEOS_MAKE_PATH)/tool.mk
