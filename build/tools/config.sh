#!env bash
# -*- coding: utf-8 -*-
#Filename:    config.sh
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
. ${PORT_TOOLS}/main.sh
function config()
{
	echo -e "${BLUE}>>>Config"
	echo -e "<<<Done${erase}"
}
function main()
{
	config
}
mk_timer main
