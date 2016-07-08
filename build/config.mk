#-*- coding: utf-8 -*-
#Filename:    config.mk
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
SHELL := bash
.PHONY:config
config:
	@$(SHELL) $(PORT_TOOLS)/config.sh
