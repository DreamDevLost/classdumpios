GO_EASY_ON_ME=1
THEOS_DEVICE_IP=192.168.15.12
DEBUG=1
FINALPACKAGE=0
include $(THEOS)/makefiles/common.mk

TOOL_NAME = classdumpios
classdumpios_CFLAGS = -fobjc-arc -include ext.h
#CDFatArch.m_CFLAGS = -fobjc-arc
#CDTypeFormatter.m_CFLAGS = -fobjc-arc
#CDSymbol.m_CFLAGS = -fobjc-arc
#CDTypeController.m_CFLAGS = -fobjc-arc
#CDLoadCommand.m_CFLAGS = -fobjc-arc
#CDSection.m_CFLAGS = -fobjc-arc
#CDStructureTable.m_CFLAGS = -fobjc-arc

classdumpios_FRAMEWORKS = UIKit
classdumpios_FILES = $(wildcard *.*m)

include $(THEOS_MAKE_PATH)/tool.mk
