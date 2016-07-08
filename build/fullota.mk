# -*- coding: utf-8 -*-
#Filename:    fullota.mk
#Porject :    InsprionBuildSystem
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
SHELL := bash
.PHONY:fullota
fullota:
	@$(SHELL) $(PORT_TOOLS)/fullota.sh
