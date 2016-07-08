#!env bash
. ${PORT_TOOLS}/main.sh
function create()
{
	local device=$1
	if [ -z $device ];then
		echo -e "${ERROR} Sample:"
		echo -e "\tmake create device=cherry"
		return -1
	else
		if [ -d ${PORT_DEVICES}/${device} ];then
			echo -e -n "${GREEN}${PORT_DEVICES}/${device}${erase} already exist,delete it?(Y/N):"
			read opt
			case $opt in
				'Y'|'y')
					rm -r ${PORT_DEVICES}/${device}
					mkdir -p ${PORT_DEVICES}/${device}
					cp -r ${PORT_BUILD}/template/* ${PORT_DEVICES}/${device};;
				*)
					return -1;;
			esac
		else
			mkdir -p ${PORT_DEVICES}/${device}
			cp -r ${PORT_BUILD}/template/* ${PORT_DEVICES}/${device}
		fi
	fi
}
mk_timer create $1
