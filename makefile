.POSIX: # POSIX Makefile, use make,gmake,pdpmake,bmake
.SUFFIXES:
.PHONY: all clean install check

PROJECT    =git-ssh
VERSION    =1.0.0
PREFIX     =/usr/local
TOOLCHAINS =noarch
EXE        =$(HOMEDRIVE:C:=.exe)
DESTDIR    =$(HOMEDRIVE)

all:
clean:
install:
check:
## -- BLOCK:license --
install: install-license
install-license: README.md COPYING
	install -d $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	install -c -m 644 README.md COPYING $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
## -- BLOCK:license --
## -- BLOCK:sh --
install: install-sh
install-sh:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -c -m 755 bin/git-ssh $(DESTDIR)$(PREFIX)/bin
## -- BLOCK:sh --
