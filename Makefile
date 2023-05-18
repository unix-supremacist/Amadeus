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
.if "${PLATFORM}" == "Linux"
	$(MAKE) install -C aureate/
.endif

uninstall:
	$(MAKE) uninstall -C st/
	$(MAKE) uninstall -C dmenu/
.if "${PLATFORM}" == "Linux"
	$(MAKE) uninstall -C aureate/
.endif

clean:
	$(MAKE) clean -C st/
	$(MAKE) clean -C dmenu/
.if "${PLATFORM}" == "Linux"
	$(MAKE) clean -C aureate/
.endif