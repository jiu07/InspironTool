# -*- coding: utf-8 -*-
#Filename:    template/Makefile
#Porject :    InsprionBuildSystem
#Author  :    zerozakiGeek
#Email   :    zerozakiGeek@gmail.com
#Date    :    2016-06-29
# 目标底包
PORT_ROM := port.zip

# 本机底包
STOCK_ROM := stockrom.zip

# system分区路径
SYSTEM_PARTATION := /dev/block/bootdevice/by-name/system

# data分区路径
USERDATA_PARTATION := /dev/block/bootdevice/by-name/userdata

# 解包boot.img工具
# 默认build/tools/mkbootimg.sh
UNPACK_BOOTIMG_TOOL := default

# 打包boot.img工具
# 默认build/tools/mkbootimg.sh
REPACK_BOOTIMG_TOOL := default

# 是否合并odex
DEODEX := false

# CPU厂商
CPU_VARIANT := qcom
ifneq ($(PORT_BUILD),)
warning:
	@echo "$(ERROR) Do you want 'make fullota'?"
include $(PORT_BUILD)/main.mk
else
error:
	@echo "\033[31;1m[ERROR]\033[0m You must execute 'source build/envsetup.sh' under source code tree"
endif
