#!env bash
export RED="\033[31;1m"
export erase="\033[0m"
export BLUE="\033[34;5m"
export GREEN="\033[32m"
export ERROR="${RED}[ERROR]${erase}"
function initializetion()
{
if [ ! -d build ]||[ ! -d build/tools ]||[ ! -d devices ]||[ ! -f build/envsetup.sh ];then
	echo -e "${ERROR} You must run me under source tree."
else
	export PORT_ROOT=$PWD
	export PORT_BUILD=${PORT_ROOT}/build
	export PORT_TOOLS=${PORT_BUILD}/tools
	export PORT_DEVICES=${PORT_ROOT}/devices
	local dev=(`ls ${PORT_DEVICES}/`)
	echo -e "${BLUE}>>>All Device"
	for i in $dev;do
		if [ -f ${PORT_DEVICES}/$i/Makefile ];then
		echo -e "\t${PORT_DEVICES}/$i c$i"
		function c$i()
		{
			cd ${PORT_DEVICES}/$i
		}
	fi
	done
	echo -e "<<<Done${erase}"
	function croot()
	{
		cd ${PORT_ROOT}
	}
	function cbuild()
	{
		cd ${PORT_BUILD}
	}
	function ctools()
	{
		cd ${PORT_TOOLS}
	}
if [ ! `echo $PATH|grep -e ${PORT_TOOLS}` ];then
	export PATH=${PORT_TOOLS}/bin:$PATH
fi
	function make()
	{
		env make $@ 2>/dev/null
	}
fi
}
initializetion
