## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_DIST = @PACKAGE@.spec.in @PACKAGE@-base.spec.in @PACKAGE@-themes.spec.in \
	install-menu-system.sh rpm-wa.tar.gz
EXTRA_THEMES=@EXTRA_THEMES@

version = @VERSION@
release = 0.`date +%Y%m%d`
cparams = --disable-run-updatemenu --disable-build-menus --disable-menu-system --with-fvwm-bindir=\/usr\/bin
mparams = CFLAGS="-O2"

this: @PACKAGE@.spec
	@\
	version=$(version); \
	release=$(release); \
	cparams='$(cparams)'; \
	mparams='$(mparams)'; \
	tarball=@PACKAGE@-full-$$version.tar.gz; \
	tarball_full=`cd $(top_srcdir) && pwd`/$$tarball; \
	rpm_wa=rpm-wa.tar.gz; \
	rpm_wa_full=`cd $(top_srcdir) && pwd`/rpm/$$rpm_wa; \
	ins_ms=install-menu-system.sh; \
	ins_ms_full=`cd $(top_srcdir) && pwd`/rpm/$$ins_ms; \
	if [ ! -f $$tarball_full ]; then echo "No $$tarball"; exit -1; fi; \
	ln -sf $$tarball_full /tmp/$$tarball || exit -1; \
	ln -sf $$rpm_wa_full /tmp/$$rpm_wa || exit -1; \
	ln -sf $$ins_ms_full /tmp/$$ins_ms || exit -1; \
	echo ""; \
	echo "==== Creating rpm from /tmp/$$tarball, release $$release ===="; \
	echo ""; \
	sleep 3; \
	sed < @PACKAGE@.spec > tmp-@PACKAGE@.spec \
		-e "s/%define ver /&$$version  %define old_ver /" \
		-e "s/%define rel /&$$release  %define old_rel /" \
		-e "s/%define c_p /&$$cparams  %define old_c_p /" \
		-e "s/%define m_p /&$$mparams  %define old_m_p /" \
	; \
	rpmbuild -ba --clean --target noarch-fvwm-linux tmp-@PACKAGE@.spec; \
	rm /tmp/$$tarball; \
	rm /tmp/$$rpm_wa; \
	rm /tmp/$$ins_ms; \
	rm tmp-@PACKAGE@.spec

this-base: @PACKAGE@-base.spec
	@\
	version=$(version); \
	release=$(release); \
	cparams='$(cparams)'; \
	mparams='$(mparams)'; \
	tarball=@PACKAGE@-$$version.tar.gz; \
	tarball_full=`cd $(top_srcdir) && pwd`/$$tarball; \
	rpm_wa=rpm-wa.tar.gz; \
	rpm_wa_full=`cd $(top_srcdir) && pwd`/rpm/$$rpm_wa; \
	ins_ms=install-menu-system.sh; \
	ins_ms_full=`cd $(top_srcdir) && pwd`/rpm/$$ins_ms; \
	if [ ! -f $$tarball_full ]; then echo "No $$tarball"; exit -1; fi; \
	ln -sf $$tarball_full /tmp/$$tarball || exit -1; \
	ln -sf $$rpm_wa_full /tmp/$$rpm_wa || exit -1; \
	ln -sf $$ins_ms_full /tmp/$$ins_ms || exit -1; \
	echo ""; \
	echo "==== Creating rpm from /tmp/$$tarball, release $$release ===="; \
	echo ""; \
	sleep 3; \
	sed < @PACKAGE@-base.spec > tmp-@PACKAGE@.spec \
		-e "s/%define ver /&$$version  %define old_ver /" \
		-e "s/%define rel /&$$release  %define old_rel /" \
		-e "s/%define c_p /&$$cparams  %define old_c_p /" \
		-e "s/%define m_p /&$$mparams  %define old_m_p /" \
	; \
	rpmbuild -ba --clean --target noarch-fvwm-linux tmp-@PACKAGE@.spec; \
	rm /tmp/$$tarball; \
	rm /tmp/$$rpm_wa; \
	rm /tmp/$$ins_ms; \
	rm tmp-@PACKAGE@.spec

this-extra: @PACKAGE@-extra.spec
	@\
	version=$(version); \
	release=$(release); \
	cparams='$(cparams)'; \
	mparams='$(mparams)'; \
	tarball=@PACKAGE@-extra-$$version.tar.gz; \
	tarball_full=`cd $(top_srcdir) && pwd`/$$tarball; \
	if [ ! -f $$tarball_full ]; then echo "No $$tarball"; exit -1; fi; \
	ln -sf $$tarball_full /tmp/$$tarball || exit -1; \
	echo ""; \
	echo "==== Creating rpm from /tmp/$$tarball, release $$release ===="; \
	echo ""; \
	sleep 3; \
	sed < @PACKAGE@-extra.spec > tmp-@PACKAGE@.spec \
		-e "s/%define ver /&$$version  %define old_ver /" \
		-e "s/%define rel /&$$release  %define old_rel /" \
		-e "s/%define c_p /&$$cparams  %define old_c_p /" \
		-e "s/%define m_p /&$$mparams  %define old_m_p /" \
	; \
	rpmbuild -ba --clean --target noarch-fvwm-linux tmp-@PACKAGE@.spec; \
	rm /tmp/$$tarball; \
	rm tmp-@PACKAGE@.spec

this-themes: @PACKAGE@-themes.spec
	@\
	version=$(version); \
	release=$(release); \
	cparams='$(cparams)'; \
	mparams='$(mparams)'; \
	for t in $(EXTRA_THEMES); do \
		tarball=ft-$$t-$$version.tar.gz; \
		tarball_full=`cd $(top_srcdir) && pwd`/$$tarball; \
		if [ ! -f $$tarball_full ]; then echo "No $$tarball"; exit -1; fi; \
		ln -sf $$tarball_full /tmp/$$tarball || exit -1; \
		echo ""; \
		echo "==== Creating rpm from /tmp/$$tarball, release $$release ===="; \
		echo ""; \
		sleep 3; \
		sed < @PACKAGE@-themes.spec > tmp-@PACKAGE@.spec \
		-e "s/%define ver /&$$version  %define old_ver /" \
		-e "s/%define rel /&$$release  %define old_rel /" \
		-e "s/%define c_p /&$$cparams  %define old_c_p /" \
		-e "s/%define m_p /&$$mparams  %define old_m_p /" \
		-e "s/xxxThemesxxx/$$t/" \
		; \
		rpmbuild -ba --clean --target noarch-fvwm-linux tmp-@PACKAGE@.spec; \
		rm /tmp/$$tarball; \
		rm tmp-@PACKAGE@.spec; \
	done
