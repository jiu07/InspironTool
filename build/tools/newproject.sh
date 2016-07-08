#!env bash
# -*- coding: utf-8 -*-
#Filename:    newproject.sh
#Porject :    
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-07-02
. ${PORT_TOOLS}/main.sh
function newproject()
{
	echo -e "${BLUE}>>>pull oem_target_files"
	local ADB=${PROT_TOOLS}/bin/adb
	$ADB shell ls / 2>/dev/null
	if [ $? != 0 ];then
	echo -e "Device is not online"
		if [ -f $1 ];then
			echo -e "But $1 is exist"
			unzip $1 -d board/
		else
			echo -e "${ERROR} $1 does not exist and device is not online!${BLUE}"
			fail
			return -1
		fi
		if [ -f config/recovery.fstab ];then
		$adb pull `parse config/recovery.fstab boot` board/boot.img
		fi
		zip $1 board/* -r
		if [ -f $1 ];then
			echo -e "OUT_STOCKZIP:$1"
		else
		echo -e "Create:$1 Error!"
		fail
		return -1
	fi
	fi
	echo -e "<<<Done${erase}"
}
main()
{
	newproject $1
}
mk_timer main $1
