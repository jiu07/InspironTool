#-*- coding: utf-8 -*-
#Filename:    newproject.mk
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
SHELL := bash
.PHONY:newproject
newproject:
	@$(SHELL) $(PORT_TOOLS)/newproject.sh $(STOCK_ROM)
