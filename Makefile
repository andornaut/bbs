PREFIX    ?= /usr/local
BINPREFIX ?= $(PREFIX)/bin
TARGETS = $(wildcard bbs*)

.PHONY: all install uninstall

all:
	@echo "Run make install"

install:
	sudo mkdir -p "$(DESTDIR)$(BINPREFIX)"
	sudo cp -pf $(TARGETS) "$(DESTDIR)$(BINPREFIX)/"

uninstall:
	for target in $(TARGETS); do rm -f "$(DESTDIR)$(BINPREFIX)/$${target}"; done
