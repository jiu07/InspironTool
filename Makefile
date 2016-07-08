# -*- coding: utf-8 -*-
#Filename:    Makefile
#Porject :    InsprionRoot
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
ifneq ($(PORT_BUILD),)
warning:
	@echo -e "$(ERROR) Do you want 'make create'?"
include $(PORT_BUILD)/main.mk
else
error:
	@echo -e "\033[31;1m[ERROR]\033[0m You must execute 'source build/envsetup.sh'"
endif
