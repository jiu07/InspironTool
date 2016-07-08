# -*- coding: utf-8 -*-
#Filename:    create.mk
#Porject :    InsprionBuildSystem
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
hide := @
.PHONY:create
create:
	@bash $(PORT_TOOLS)/create.sh $(device); 
