#!env bash
# -*- coding: utf-8 -*-
#Filename:    prepare.sh
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
. ${PORT_TOOLS}/main.sh
function prepare()
{
	echo -e "${BLUE}>>>Prepare"
	echo ""
	echo -e "<<<Done${erase}"
}
function main()
{
	prepare
}
mk_timer main
