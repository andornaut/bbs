PREFIX    ?= /usr/local
BINPREFIX ?= $(PREFIX)/bin
TARGETS = $(wildcard bbs*)

.PHONY: default all install

all: default

default:
	@echo "Run sudo make install"

install:
	mkdir -p "$(DESTDIR)$(BINPREFIX)"
	cp -pf $(TARGETS) "$(DESTDIR)$(BINPREFIX)/"

uninstall:
	for target in $(TARGETS); do rm -f "$(DESTDIR)$(BINPREFIX)/$${target}"; done
