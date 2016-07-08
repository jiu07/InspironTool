#!env bash
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
