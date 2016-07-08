hide := @
include $(PORT_BUILD)/create.mk
ifneq ($(PWD),$(PORT_ROOT))
include $(PORT_BUILD)/port.mk
include $(PORT_BUILD)/fullota.mk
include $(PORT_BUILD)/clean.mk
include $(PORT_BUILD)/config.mk
include $(PORT_BUILD)/newproject.mk
include $(PORT_BUILD)/prepare.mk
endif
