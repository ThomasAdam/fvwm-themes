## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_THEMES = @EXTRA_THEMES@
EXTRA_DIST = docs dirs postinst postrm
version = @VERSION@
release = 0.`date +%Y%m%d`
cparams = --disable-run-updatemenu --disable-build-menus --with-fvwm-bindir=/usr/bin
mparams = CFLAGS="-O2"
datum = `date "+%a, %d %b %Y %T %z"`
fullname = FVWM Themes Developers
email = fvwm-themes-devel@lists.sourceforge.net
arch ?= $(shell dpkg-architecture -qDEB_BUILD_ARCH)
DESTDIR = $(CURDIR)/debian/tmp

this:
	tar -xzf `cd $(top_srcdir) && pwd`/fvwm-themes-$(version).tar.gz
	(cd fvwm-themes-$(version) && ./configure) || exit 1
	(cd fvwm-themes-$(version) && $(MAKE) $(AM_MAKEFLAGS) deb-inplace) || exit 1
	-rm -rf fvwm-themes-$(version)

this-base:
	tar -xzf `cd $(top_srcdir) && pwd`/fvwm-themes-$(version).tar.gz
	(cd fvwm-themes-$(version) && ./configure) || exit 1
	(cd fvwm-themes-$(version) && $(MAKE) $(AM_MAKEFLAGS) deb-inplace-base) || exit 1
	-rm -rf fvwm-themes-$(version)

this-extra:
	tar -xzf `cd $(top_srcdir) && pwd`/fvwm-themes-$(version).tar.gz
	(cd fvwm-themes-$(version) && ./configure) || exit 1
	(cd fvwm-themes-$(version) && $(MAKE) $(AM_MAKEFLAGS) deb-inplace-extra) || exit 1
	-rm -rf fvwm-themes-$(version)

inplace:
	$(MAKE) clean
	echo "fvwm-themes-full ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	./configure --prefix=/usr --mandir=/usr/share/man $(cparams)
	cp -f debian/full-control debian/control
	fakeroot dh_clean
	(cd  .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir
	fakeroot dh_testroot
	$(MAKE) $(mparams)
	$(MAKE) prefix=$(DESTDIR)/usr ROOT_PREFIX=$(DESTDIR) mandir=$(DESTDIR)/usr/share/man install
	chmod 0644 $(DESTDIR)/usr/share/fvwm/themes/cde/background/pattern
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_installmenu
	fakeroot dh_link
	fakeroot dh_strip
	fakeroot dh_compress
	fakeroot dh_fixperms
	fakeroot dh_perl
	fakeroot dh_installdeb
	fakeroot dh_shlibdeps
	fakeroot dh_gencontrol
	fakeroot dh_md5sums
	fakeroot dh_builddeb
	-dpkg-genchanges > ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	-debsign ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/full-control

inplace-base:
	$(MAKE) clean
	echo "fvwm-themes ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	./configure --prefix=/usr --mandir=/usr/share/man $(cparams)
	cp -f debian/base-control debian/control
	fakeroot dh_clean
	(cd .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir
	fakeroot dh_testroot
	$(MAKE) $(mparams)
	$(MAKE) prefix=$(DESTDIR)/usr ROOT_PREFIX=$(DESTDIR) mandir=$(DESTDIR)/usr/share/man install
	@for t in $(EXTRA_THEMES); do \
		rm -r $(DESTDIR)/usr/share/fvwm/themes/$$t ; \
	done
	chmod 0644 $(DESTDIR)/usr/share/fvwm/themes/cde/background/pattern
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_installmenu
	fakeroot dh_link
	fakeroot dh_strip
	fakeroot dh_compress
	fakeroot dh_fixperms
	fakeroot dh_perl
	fakeroot dh_installdeb
	fakeroot dh_shlibdeps
	fakeroot dh_gencontrol
	fakeroot dh_md5sums
	fakeroot dh_builddeb
	-dpkg-genchanges > ../fvwm-themes_$(version)-$(release)_$(arch).changes
	-debsign ../fvwm-themes_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/base-control

inplace-extra:
	$(MAKE) clean
	echo "fvwm-themes-extra ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	cp -f debian/extra-control debian/control
	fakeroot dh_clean
	(cd .. && dpkg-source -b $(CURDIR))
	fakeroot dh_testdir
	fakeroot dh_testroot
	-[ -d $(DESTDIR) ] || mkdir  $(DESTDIR)
	-[ -d $(DESTDIR)/usr ] || mkdir $(DESTDIR)/usr
	-[ -d $(DESTDIR)/usr/share ] || mkdir $(DESTDIR)/usr/share
	-[ -d $(DESTDIR)/usr/share/fvwm ] || mkdir $(DESTDIR)/usr/share/fvwm
	-[ -d $(DESTDIR)/usr/share/fvwm/themes ] || mkdir $(DESTDIR)/usr/share/fvwm/themes
	-[ -d $(DESTDIR)/DEBIAN ] || mkdir $(DESTDIR)/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		cp -r themes/$$t $(DESTDIR)/usr/share/fvwm/themes/; \
	done
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_installmenu
	fakeroot dh_link
	fakeroot dh_strip
	fakeroot dh_compress
	fakeroot dh_fixperms
	fakeroot dh_perl
	fakeroot dh_installdeb
	fakeroot dh_shlibdeps
	fakeroot dh_gencontrol
	fakeroot dh_md5sums
	-rm $(DESTDIR)/DEBIAN/postinst
	-rm $(DESTDIR)/DEBIAN/postrm
	fakeroot dh_builddeb 
	-dpkg-genchanges > ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	-debsign  ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/extra-control

