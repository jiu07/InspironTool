SHELL := bash
.PHONY:newproject
newproject:
	@$(SHELL) $(PORT_TOOLS)/newproject.sh $(STOCK_ROM)
