BINDIR ?= /usr/local/bin
MANDIR ?= /usr/local/man

install:
	@echo Installing the executable to $(BINDIR)
	@install -D -m 755 bb.sh $(BINDIR)/bb
	@echo Installing the man page to $(MANDIR)/man1
	@install -D -m 644 bb.1 $(MANDIR)/man1/

uninstall:
	@echo Removing the executable from $(BINDIR)
	@rm -f $(BINDIR)/bb
	@echo Removing the man page from $(MANDIR)
	@rm -f $(MANDIR)/man1/bb.1

.PHONY: install uninstall
