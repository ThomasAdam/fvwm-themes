## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in

EXTRA_THEMES = @EXTRA_THEMES@

version = @VERSION@
release = 0.`date +%Y%m%d`
datum = `date "+%a, %d %b %Y %X %z"`
fullname = FVWM Themes Developers
email = fvwm-themes-devel@lists.sourceforge.net

deb:
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); \
	fullname=$(fullname); \
	email=$(email); \
	cp -f debian/full-control debian/control; \
	echo "fvwm-themes-full ($$version-$$release) unstable; urgency=low" > debian/changelog; \
	echo ""  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo "" >> debian/changelog; \
	echo " -- $$fullname <$$email>  $$datum" >> debian/changelog; \
	echo "" >> debian/changelog; \
	cat debian/full-changelog >> debian/changelog; \
	chmod 744 debian/rules
	fakeroot debian/rules clean
	fakeroot debian/rules install
	mv -f debian/fvwm-themes/etc/menu-methods/* debian/fvwm-themes-full/etc/menu-methods/
	mv -f debian/fvwm-themes/usr/share/fvwm/* debian/fvwm-themes-full/usr/share/fvwm/
	mv -f debian/fvwm-themes/usr/bin/* debian/fvwm-themes-full/usr/bin/
	mv -f debian/fvwm-themes/usr/share/man/man1/* debian/fvwm-themes-full/usr/share/man/man1/
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
	-rm -f debian/control


deb-base:
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); \
	cp -f debian/base-control debian/control; \
	echo "fvwm-themes ($$version-$$release) unstable; urgency=low" > debian/changelog; \
	echo ""  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo "" >> debian/changelog; \
	echo " -- $$fullname <$$email>  $$datum" >> debian/changelog; \
	echo "" >> debian/changelog; \
	cat debian/base-changelog >> debian/changelog; \
	fakeroot make -f debian/rules clean
	fakeroot make -f debian/rules install
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra/usr/share/fvwm/themes/; \
	done
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
	-rm -f debian/control


deb-extra:
	@\
	version=$(version); \
	datum=$(datum); \
	release=$(release); \
	cp -f debian/extra-control debian/control; \
	echo "fvwm-themes-extra ($$version-$$release) unstable; urgency=low" > debian/changelog; \
	echo " "  >> debian/changelog; \
	echo "  * new upstream release" >> debian/changelog; \
	echo " " >> debian/changelog; \
	echo " -- $$fullname <$$email>  $$datum" >>  debian/changelog; \
	echo " " >> debian/changelog; \
	cat debian/extra-changelog >> debian/changelog; \
	fakeroot make -f debian/rules clean
	fakeroot make -f debian/rules install
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t \
		debian/fvwm-themes-extra/usr/share/fvwm/themes/; \
	done
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
	-rm -f debian/control

