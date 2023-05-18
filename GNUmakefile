BMAKE != pacman -Q bmake

install_bmake:
ifeq (${BMAKE},'error: package 'bmake' was not found')
	pacman --noconfirm -Sy bmake
endif

install: install_bmake
	bmake install

uninstall: install_bmake
	bmake uninstall

clean: install_bmake
	bmake clean