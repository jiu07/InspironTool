#!env bash
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
