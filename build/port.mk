.PHONY:port
port:port_system port_boot port_updater
.PHONY:port_system
port_system:
	@$(PORT_TOOLS)/port.sh port_system
.PHONY:port_boot
port_boot:
	@$(PORT_TOOLS)/port.sh port_boot
.PHONY:port_updater
port_updater:
	@$(PORT_TOOLS)/port.sh port_updater
.PHONY:port_recovery
port_recovery:
	@$(PORT_TOOLS)/port.sh port_recovery
