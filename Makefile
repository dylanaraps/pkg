PREFIX ?= /usr

all:
	@echo Run \'make install\' to install pkg.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p pkg $(DESTDIR)$(PREFIX)/bin/pkg
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/pkg
