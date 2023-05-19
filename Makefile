PLATFORM != uname

.if "${PLATFORM}" == "OpenBSD"
MAKE = make
.endif

.if "${PLATFORM}" == "Linux"
MAKE = bmake
.endif

install_packages:
.if "${PLATFORM}" == "Linux"
	pacman --noconfirm -Sy doas mpv
.endif

install: install_packages
	$(MAKE) install -C st/
	$(MAKE) install -C dmenu/
	$(MAKE) install -C nsxiv/
	$(MAKE) install -C samurai/
.if "${PLATFORM}" == "Linux"
	$(MAKE) install -C aureate/
.endif

uninstall:
	$(MAKE) uninstall -C st/
	$(MAKE) uninstall -C dmenu/
	$(MAKE) uninstall -C nsxiv/
#todo add uninstall recipe in the samurai makefile	
#	$(MAKE) uninstall -C samurai/
.if "${PLATFORM}" == "Linux"
	$(MAKE) uninstall -C aureate/
.endif

clean:
	$(MAKE) clean -C st/
	$(MAKE) clean -C dmenu/
	$(MAKE) clean -C nsxiv/
	$(MAKE) clean -C samurai/
.if "${PLATFORM}" == "Linux"
	$(MAKE) clean -C aureate/
.endif