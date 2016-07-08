#-*- coding: utf-8 -*-
#Filename:    prepare.mk
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
SHELL := bash
.PHONY:prepare
repare:
	@$(SHELL) $(PORT_TOOLS)/prepare.sh
