#!env bash
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
