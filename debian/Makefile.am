## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_THEMES = @EXTRA_THEMES@
EXTRA_DIST = docs dirs postinst postrm prerm copyright conffiles

version = @VERSION@
release = 0.`date +%Y%m%d`
cparams = --disable-run-updatemenu --disable-build-menus --with-fvwm-bindir=/usr/bin
mparams = CFLAGS="-O2"
datum = `date "+%a, %d %b %Y %T %z"`
fullname = FVWM Themes Developers
email = fvwm-themes-devel@lists.sourceforge.net
arch ?= $(shell dpkg-architecture -qDEB_BUILD_ARCH)
distdir = $(PACKAGE)-$(version)
tarball = $(distdir).tar.gz
instdir = inst-$(version)
fullinstdir ?= $(shell cd $(top_srcdir) && pwd)/$(instdir)

this0:
	@if [ ! -d debian ]; then echo "Wrong working dir `pwd`"; exit -1; fi
	@if [ ! -f $(tarball) ]; then echo "No $(tarball)"; exit -1; fi
	$(AMTAR) -zxf $(tarball)
	@cd $(distdir); \
	if [ ! -d debian ]; then \
		cp -r $(top_srcdir)/debian ./; \
		echo "deb-inplace:" >>Makefile.in; \
		echo '  $$==(MAKE) -f debian/Makefile $$==(AM_MAKEFLAGS) inplace' | tr -d = >>Makefile.in; \
		ls `cat debian/docs` >debian/docs-tmp 2>/dev/null && \
		rm -f debian/docs-tmp || mv debian/docs-tmp debian/docs; \
	fi; \
	echo ""; \
	echo "==== Creating deb from $(tarball), release $(release) ===="; \
	echo ""; \
	sleep 3; \
	./configure $(cparams); \
	$(MAKE) $(AM_MAKEFLAGS) $(deb_target)
	-rm -rf $(distdir)

this: deb_target = deb-inplace
this: this0

this-base: deb_target = deb-inplace-base
this-base: this0

this-extra: deb_target=deb-inplace-extra
this-extra: this0

inplace:
	@if [ ! -d debian ]; then echo "Wrong working dir `pwd`"; exit -1; fi
	$(MAKE) clean
	echo "fvwm-themes-full ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	(LANG=en_UK && LC_ALL=en_UK && echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog)
	echo '?package(fvwm-themes-full): needs=wm section=WindowManagers title="FVWM Themes" longtitle="FVWM Window Manager with Themes" command="/usr/bin/fvwm-themes-start"' > debian/fvwm-themes.menu
	./configure --prefix=/usr --mandir='/$$'{prefix}/share/man $(cparams)
	cp -f debian/full-control debian/control
	fakeroot dh_clean -P$(fullinstdir)
	(cd  .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	$(MAKE) $(mparams)
	$(MAKE) prefix=$(fullinstdir)/usr ROOT_PREFIX=$(fullinstdir) install
	chmod 0644 $(fullinstdir)/usr/share/fvwm/themes/cde/background/pattern
	-mkdir $(fullinstdir)/usr/lib
	-mkdir $(fullinstdir)/usr/lib/menu
	cp debian/fvwm-themes.menu $(fullinstdir)/usr/lib/menu/fvwm-themes
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	fakeroot dh_installchangelogs -P$(fullinstdir)
	fakeroot dh_installdocs -P$(fullinstdir)
	fakeroot dh_installmenu -P$(fullinstdir)
	fakeroot dh_link -P$(fullinstdir)
	fakeroot dh_strip -P$(fullinstdir)
	fakeroot dh_compress -P$(fullinstdir)
	fakeroot dh_fixperms -P$(fullinstdir)
	fakeroot dh_perl -P$(fullinstdir)
	fakeroot dh_installdeb -P$(fullinstdir)
	fakeroot dh_shlibdeps -P$(fullinstdir)
	fakeroot dh_gencontrol -P$(fullinstdir)
	fakeroot dh_md5sums -P$(fullinstdir)
	fakeroot dh_builddeb -P$(fullinstdir)
	-dpkg-genchanges > ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	-debsign ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean -P$(fullinstdir)
	rm -f debian/control debian/full-control

inplace-base:
	$(MAKE) clean
	echo "fvwm-themes ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	echo '?package(fvwm-themes): needs=wm section=WindowManagers title="FVWM Themes" longtitle="FVWM Window Manager with Themes" command="/usr/bin/fvwm-themes-start"' > debian/fvwm-themes.menu
	./configure --prefix=/usr --mandir='/$$'{prefix}/share/man $(cparams)
	cp -f debian/base-control debian/control
	fakeroot dh_clean -P$(fullinstdir)
	(cd .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	$(MAKE) $(mparams)
	$(MAKE) prefix=$(fullinstdir)/usr ROOT_PREFIX=$(fullinstdir) install
	@for t in $(EXTRA_THEMES); do \
		rm -r $(fullinstdir)/usr/share/fvwm/themes/$$t ; \
	done
	chmod 0644 $(fullinstdir)/usr/share/fvwm/themes/cde/background/pattern
	-mkdir $(fullinstdir)/usr/lib
	-mkdir $(fullinstdir)/usr/lib/menu
	cp debian/fvwm-themes.menu $(fullinstdir)/usr/lib/menu/fvwm-themes
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	fakeroot dh_installchangelogs -P$(fullinstdir)
	fakeroot dh_installdocs -P$(fullinstdir)
	fakeroot dh_installmenu -P$(fullinstdir)
	fakeroot dh_link -P$(fullinstdir)
	fakeroot dh_strip -P$(fullinstdir)
	fakeroot dh_compress -P$(fullinstdir)
	fakeroot dh_fixperms -P$(fullinstdir)
	fakeroot dh_perl -P$(fullinstdir)
	fakeroot dh_installdeb -P$(fullinstdir)
	fakeroot dh_shlibdeps -P$(fullinstdir)
	fakeroot dh_gencontrol -P$(fullinstdir)
	fakeroot dh_md5sums -P$(fullinstdir)
	fakeroot dh_builddeb -P$(fullinstdir)
	-dpkg-genchanges > ../fvwm-themes_$(version)-$(release)_$(arch).changes
	-debsign ../fvwm-themes_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean -P$(fullinstdir)
	rm -f debian/control debian/base-control

inplace-extra:
	$(MAKE) clean
	echo "fvwm-themes-extra ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	cp -f debian/extra-control debian/control
	fakeroot dh_clean -P$(fullinstdir)
	(cd .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	-[ -d $(fullinstdir) ] || mkdir $(fullinstdir)
	-[ -d $(fullinstdir)/usr ] || mkdir $(fullinstdir)/usr
	-[ -d $(fullinstdir)/usr/share ] || mkdir $(fullinstdir)/usr/share
	-[ -d $(fullinstdir)/usr/share/fvwm ] || mkdir $(fullinstdir)/usr/share/fvwm
	-[ -d $(fullinstdir)/usr/share/fvwm/themes ] || mkdir $(fullinstdir)/usr/share/fvwm/themes
	-[ -d $(fullinstdir)/DEBIAN ] || mkdir $(fullinstdir)/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		cp -r themes/$$t $(fullinstdir)/usr/share/fvwm/themes/; \
	done
	fakeroot dh_testdir -P$(fullinstdir)
	fakeroot dh_testroot -P$(fullinstdir)
	fakeroot dh_installchangelogs -P$(fullinstdir)
	fakeroot dh_installdocs -P$(fullinstdir)
	fakeroot dh_installmenu -P$(fullinstdir)
	fakeroot dh_link -P$(fullinstdir)
	fakeroot dh_strip -P$(fullinstdir)
	fakeroot dh_compress -P$(fullinstdir)
	fakeroot dh_fixperms -P$(fullinstdir)
	fakeroot dh_perl -P$(fullinstdir)
	fakeroot dh_installdeb -P$(fullinstdir)
	fakeroot dh_shlibdeps -P$(fullinstdir)
	fakeroot dh_gencontrol -P$(fullinstdir)
	fakeroot dh_md5sums -P$(fullinstdir)
	-rm $(fullinstdir)/DEBIAN/postinst
	-rm $(fullinstdir)/DEBIAN/postrm
	-rm $(fullinstdir)/DEBIAN/prerm
	-rm $(fullinstdir)/DEBIAN/conffiles
	fakeroot dh_builddeb -P$(fullinstdir)
	-dpkg-genchanges > ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	-debsign  ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean -P$(fullinstdir)
	rm -f debian/control debian/extra-control

