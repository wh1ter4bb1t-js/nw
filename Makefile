PREFIX := /usr/local

all: install

install:
	cp nw $(DESTDIR)$(PREFIX)/bin/nw
	chmod 0755 $(DESTDIR)$(PREFIX)/bin/nw

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/nw

.PHONY: all install uninstall
