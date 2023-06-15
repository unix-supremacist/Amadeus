PLATFORM != uname

install:
	$(MAKE) install -C st/
#todo why is dmenu/nsxiv not building on cproc?
	CC=cc $(MAKE) install -C dmenu/
	CC=cc $(MAKE) install -C nsxiv/
	$(MAKE) install -C samurai/
	$(MAKE) install -C cproc/
	CC=cc $(MAKE) install -C cproc/qbe/
.if "${PLATFORM}" == "Linux"
	$(MAKE) install -C aureate/
.endif

uninstall:
	$(MAKE) uninstall -C st/
	$(MAKE) uninstall -C dmenu/
	$(MAKE) uninstall -C nsxiv/
#todo add uninstall recipe in the samurai makefile	
#	$(MAKE) uninstall -C samurai/
#	$(MAKE) uninstall -C cproc/
	$(MAKE) uninstall -C cproc/qbe/
.if "${PLATFORM}" == "Linux"
	$(MAKE) uninstall -C aureate/
.endif

clean:
	$(MAKE) clean -C st/
	$(MAKE) clean -C dmenu/
	$(MAKE) clean -C nsxiv/
	$(MAKE) clean -C samurai/
	$(MAKE) clean -C cproc/
	$(MAKE) clean -C cproc/qbe/
.if "${PLATFORM}" == "Linux"
	$(MAKE) clean -C aureate/
.endif