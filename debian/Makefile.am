## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_THEMES = @EXTRA_THEMES@

version = @VERSION@
release = 0.`date +%Y%m%d`
datum = `date "+%a, %d %b %Y %T %z"`
fullname = FVWM Themes Developers
email = fvwm-themes-devel@lists.sourceforge.net
arch ?= $(shell dpkg-architecture -qDEB_BUILD_ARCH)
sdir ?= $(shell pwd)

deb:
	make clean
	echo "fvwm-themes-full ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	./configure --prefix=/usr --disable-run-updatemenu
	cp -f debian/full-control debian/control
	fakeroot dh_clean
	(cd  .. && dpkg-source -b $(sdir))
	fakeroot dh_testdir
	fakeroot dh_testroot
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes-full/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes-full mandir=$(CURDIR)/debian/fvwm-themes-full/usr/share/man install
	chmod 0644 debian/fvwm-themes-full/usr/share/fvwm/themes/cde/background/pattern
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_install
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
	-@dpkg-genchanges > ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	-@debsign ../fvwm-themes-full_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/full-control


deb-base:
	make clean
	echo "fvwm-themes ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	./configure --prefix=/usr --disable-run-updatemenu
	cp -f debian/base-control debian/control
	fakeroot dh_clean
	(cd .. && dpkg-source -b $(sdir))
	fakeroot dh_testdir
	fakeroot dh_testroot
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes mandir=$(CURDIR)/debian/fvwm-themes/usr/share/man install
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes-extra/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra/usr/share/fvwm/themes/; \
	done
	rm -r debian/fvwm-themes-extra
	chmod 0644 debian/fvwm-themes/usr/share/fvwm/themes/cde/background/pattern
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_install
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
	-@dpkg-genchanges > ../fvwm-themes_$(version)-$(release)_$(arch).changes
	-@debsign ../fvwm-themes_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/base-control


deb-extra:
	make clean
	echo "fvwm-themes-extra ($(version)-$(release)) unstable; urgency=low" > debian/changelog
	echo "" >> debian/changelog
	echo "  * new upstream release" >> debian/changelog
	echo "" >> debian/changelog
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog
	./configure --prefix=/usr --disable-run-updatemenu
	cp -f debian/extra-control debian/control
	fakeroot dh_clean
	(cd .. && dpkg-source -b $(sdir))
	fakeroot dh_testdir
	fakeroot dh_testroot
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes mandir=$(CURDIR)/debian/fvwm-themes/usr/share/man install
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra 
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes-extra/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra/usr/share/fvwm/themes/; \
	done
	rm -r debian/fvwm-themes
	fakeroot dh_testdir
	fakeroot dh_testroot
	fakeroot dh_installchangelogs
	fakeroot dh_installdocs
	fakeroot dh_install
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
	rm debian/fvwm-themes-extra/DEBIAN/postinst
	rm debian/fvwm-themes-extra/DEBIAN/postrm
	fakeroot dh_builddeb 
	-@dpkg-genchanges > ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	-@debsign  ../fvwm-themes-extra_$(version)-$(release)_$(arch).changes
	fakeroot dh_clean
	rm -f debian/control debian/extra-control

