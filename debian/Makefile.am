## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_THEMES = @EXTRA_THEMES@

version = @VERSION@
release = 0.`date +%Y%m%d`
datum = `date "+%a, %d %b %Y %X %z"`
fullname = FVWM Themes Developers
email = fvwm-themes-devel@lists.sourceforge.net
dirn = fvwm-themes

deb:
	make clean;
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); \
	fullname=$(fullname); \
	email=$(email); 
	cp -f debian/full-control debian/control; \
	echo "fvwm-themes-full-$(version) ($(release)) unstable; urgency=low" > debian/changelog; \
	echo ""  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo "" >> debian/changelog; \
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog; \
	echo "" >> debian/changelog; 
	fakeroot dh_clean fvwm-themes-extra-$(version) fvwm-themes-full-$(version) fvwm-themes-$(version)
	(cd .. && dpkg-source -b fvwm-themes);
	fakeroot dh_testdir
	fakeroot dh_testroot
	./configure --prefix=/usr --disable-run-updatemenu
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes-full-$(version)/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes-full-$(version) mandir=$(CURDIR)/debian/fvwm-themes-full-$(version)/usr/share/man install
	chmod 0644 debian/fvwm-themes-full-$(version)/usr/share/fvwm/themes/cde/background/pattern
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
	@debsign ../fvwm-themes-full-$(version)_$(release).dsc
	fakeroot dh_clean fvwm-themes-extra-$(version) fvwm-themes-full-$(version) fvwm-themes-$(version)
	make clean;
	-rm -f debian/control


deb-base:
	make clean;
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); 
	cp -f debian/base-control debian/control; \
	echo "fvwm-themes-$(version) ($(release)) unstable; urgency=low" > debian/changelog; \
	echo ""  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo "" >> debian/changelog; \
	echo " -- $(fullname) <$(email)>  $(datum)" >> debian/changelog; \
	echo "" >> debian/changelog; \
	fakeroot dh_clean fvwm-themes-extra-$(version) fvwm-themes-full-$(version) fvwm-themes-$(version)
	(cd .. && dpkg-source -b fvwm-themes);
	fakeroot dh_testdir
	fakeroot dh_testroot
	./configure --prefix=/usr --disable-run-updatemenu
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes-$(version)/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes-$(version) mandir=$(CURDIR)/debian/fvwm-themes-$(version)/usr/share/man install
	-[ -d debian/fvwm-themes-extra-$(version) ] || mkdir debian/fvwm-themes-extra-$(version)
	-[ -d debian/fvwm-themes-extra-$(version)/usr ] || mkdir debian/fvwm-themes-extra-$(version)/usr
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes-extra-$(version)/DEBIAN ] || mkdir debian/fvwm-themes-extra-$(version)/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes-$(version)/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes/; \
	done
	rm -r debian/fvwm-themes-extra-$(version)
	chmod 0644 debian/fvwm-themes-$(version)/usr/share/fvwm/themes/cde/background/pattern
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
	@debsign ../fvwm-themes-$(version)_$(release).dsc
	fakeroot dh_clean fvwm-themes-extra-$(version) fvwm-themes-full-$(version) fvwm-themes-$(version)
	make clean;
	-rm -f debian/control


deb-extra:
	make clean;
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); 
	cp -f debian/extra-control debian/control; \
	echo "fvwm-themes-extra-$(version) ($(release)) unstable; urgency=low" > debian/changelog; \
	echo " "  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo " " >> debian/changelog; \
	echo " -- $(fullname) <$(email)>  $(datum)" >>  debian/changelog; \
	echo " " >> debian/changelog; 
	fakeroot dh_clean fvwm-themes-extra-$(version) fvwm-themes-full-$(version) fvwm-themes-$(version)
	(cd .. && dpkg-source -b fvwm-themes);
	fakeroot dh_testdir
	fakeroot dh_testroot
	./configure --prefix=/usr --disable-run-updatemenu
	$(MAKE)
	$(MAKE) prefix=$(CURDIR)/debian/fvwm-themes-$(version)/usr ROOT_PREFIX=$(CURDIR)/debian/fvwm-themes-$(version) mandir=$(CURDIR)/debian/fvwm-themes-$(version)/usr/share/man install
	-[ -d debian/fvwm-themes-extra-$(version) ] || mkdir debian/fvwm-themes-extra-$(version) 
	-[ -d debian/fvwm-themes-extra-$(version)/usr ] || mkdir debian/fvwm-themes-extra-$(version)/usr
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes-extra-$(version)/DEBIAN ] || mkdir debian/fvwm-themes-extra-$(version)/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes-$(version)/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra-$(version)/usr/share/fvwm/themes/; \
	done
	rm -r debian/fvwm-themes-$(version)
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
	@debsign ../fvwm-themes-extra-$(version)_$(release).dsc
	fakeroot dh_clean fvwm-themes-full-$(version) fvwm-themes-extra-$(version) fvwm-themes-$(version)
	make clean;
	-rm -f debian/control

