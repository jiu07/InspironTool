#!env bash
# -*- coding: utf-8 -*-
#Filename:    fullota.sh
#Porject :    InsprionBuildSystem
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
. ${PORT_TOOLS}/main.sh
function fullota()
{
	local out_zip=$1
	echo -e "${BLUE}>>>Fullota"
	echo "OUT_ZIP:$out_zip"
	echo -e "<<<Done${erase}"
}
function main()
{
	fullota
}
mk_timer main
