PLATFORM != uname

.if "${PLATFORM}" == "OpenBSD"
MAKE = make
.endif

.if "${PLATFORM}" == "Linux"
MAKE = bmake
.endif

install:
	$(MAKE) install -C st/
	$(MAKE) install -C dmenu/

uninstall:
	$(MAKE) uninstall -C st/
	$(MAKE) uninstall -C dmenu/

clean:
	$(MAKE) clean -C st/
	$(MAKE) clean -C dmenu/