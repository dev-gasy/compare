PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
SCRIPT = compare

.PHONY: install uninstall help

install:
	@echo "Installing $(SCRIPT) to $(BINDIR)..."
	@mkdir -p $(BINDIR)
	@cp $(SCRIPT) $(BINDIR)/$(SCRIPT)
	@chmod +x $(BINDIR)/$(SCRIPT)
	@echo "$(SCRIPT) installed successfully to $(BINDIR)/$(SCRIPT)"

uninstall:
	@echo "Removing $(SCRIPT) from $(BINDIR)..."
	@rm -f $(BINDIR)/$(SCRIPT)
	@echo "$(SCRIPT) uninstalled successfully"

help:
	@echo "Available targets:"
	@echo "  install    - Install the compare script to $(BINDIR)"
	@echo "  uninstall  - Remove the compare script from $(BINDIR)"
	@echo "  help       - Show this help message"
	@echo ""
	@echo "Variables:"
	@echo "  PREFIX     - Installation prefix (default: /usr/local)"
	@echo ""
	@echo "Usage:"
	@echo "  make install"
	@echo "  sudo make install"
	@echo "  make PREFIX=~/.local install"