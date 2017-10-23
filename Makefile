ARCHS=arm64 armv7 armv7s

TARGET=iphone::10.2

ADDITIONAL_OBJCFLAGS = -fobjc-arc

THEOS_DEVICE_IP=192.168.1.7

include /opt/theos/makefiles/common.mk

TOOL_NAME = appknox_proxy

appknox_proxy_FILES = main.mm WiFiProxy.m

appknox_proxy_FRAMEWORKS = UIKit Foundation SystemConfiguration

appknox_proxy_LDFLAGS = -undefined dynamic_lookup

include /opt/theos/makefiles/tool.mk
