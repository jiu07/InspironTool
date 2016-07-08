# -*- coding: utf-8 -*-
#Filename:    clean.mk
#Porject :    InsprionBuildSystem
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
.PHONY:clean
clean:
	$(hide)if [ "$(shell dirname $(PWD))" != "$(PORT_DEVICES)" ];then \
	echo "$(ERROR) You must run 'make clean' under device directory"; \
	else \
	echo "$(BLUE)>>>Clean..."; \
	rm -rf out/*; \
	echo "<<<Done$(erase)"; \
	fi
