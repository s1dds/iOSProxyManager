ARCHS=arm64 armv7 armv7s
TARGET=iphone:11.2:10.0
ADDITIONAL_OBJCFLAGS = -fobjc-arc

export TARGET_CODESIGN_FLAGS="-Ssign.plist"

include $(THEOS)/makefiles/common.mk

TOOL_NAME = appknox_proxy
appknox_proxy_FILES = main.mm WiFiProxy.m
appknox_proxy_FRAMEWORKS = UIKit Foundation SystemConfiguration
# appknox_proxy_LDFLAGS = -undefined dynamic_lookup

include $(THEOS_MAKE_PATH)/tool.mk
