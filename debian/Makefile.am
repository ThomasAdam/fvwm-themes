## This is a -*- Makefile -*-
## Process this file with automake to create Makefile.in
## template --filename=$(PACKAGE)_$(VERSION)-$(debrelease)_i386.deb;


EXTRA_THEMES = @EXTRA_THEMES@
version = @VERSION@
debrelease = cvs.`date +%Y.%m.%d`-0
datum = `date "+%a, %d %b %Y %X %z"`
name = Name
email = email

deb:
	@\
	version=$(version); \
	datum=$(datum); \
	debrelease=$(debrelease); \
	name=$(name)\
	email=$(email)\
	cp -f debian/full-control debian/control; 
	-if [ ! -f debian/newchangelog ]; then \
	echo "fvwm-themes-full ($(version)+$(debrelease)) unstable; urgency=low" > debian/newchangelog; \
	echo " "  >> debian/newchangelog; \
	echo "  * new upstream release" >> debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	echo " -- $(name) <$(email)>  $(datum)" >>  debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	cat debian/full-changelog >> debian/newchangelog; \
	vi debian/newchangelog; \
	fi;
	mv -f debian/newchangelog  debian/changelog;
	chmod 744 debian/rules
	fakeroot debian/rules clean;
	fakeroot debian/rules install;
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
	fakeroot dh_md5sums;
	fakeroot dh_builddeb
	rm -f debian/control
	mv -f debian/changelog debian/full-changelog


deb-base:
	@\
	version=$(version); \
	datum=$(datum); \
	debrelease=$(debrelease); \
	cp -f debian/base-control debian/control;
	-if [ ! -f debian/newchangelog ]; then \
	echo "fvwm-themes ($(version)+$(debrelease)) unstable; urgency=low" > debian/newchangelog; \
	echo " "  >> debian/newchangelog; \
	echo "  * new upstream release" >> debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	echo " -- Name <email>  $(datum)" >>  debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	cat debian/base-changelog >> debian/newchangelog; \
	vi debian/newchangelog; \
	fi;
	mv -f debian/newchangelog  debian/changelog; \
	fakeroot make -f debian/rules clean;
	fakeroot make -f debian/rules install;
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra;
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr;
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share;
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm;
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes;
	-[ -d debian/fvwm-themes/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN;
	-@for t in $(EXTRA_THEMES); do \
	    mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t\
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
	fakeroot dh_md5sums;
	fakeroot dh_builddeb
	-rm -f debian/control
	-mv -f debian/changelog debian/base-changelog



deb-extra: 
	@\
	version=$(version); \
	datum=$(datum); \
	debrelease=$(debrelease); \
	cp -f debian/extra-control debian/control; 
	-if [ ! -f debian/newchangelog ]; then \
	echo "fvwm-themes-extra ($(version)+$(debrelease)) unstable; urgency=low" > debian/newchangelog; \
	echo " "  >> debian/newchangelog; \
	echo "  * new upstream release" >> debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	echo " -- Name <email>  $(datum)" >>  debian/newchangelog; \
	echo " " >> debian/newchangelog; \
	cat debian/extra-changelog >> debian/newchangelog; \
	vi debian/newchangelog; \
	fi;
	-mv -f debian/newchangelog  debian/changelog; \
	fakeroot make -f debian/rules clean;
	fakeroot make -f debian/rules install;
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra;
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr;
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share;
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm;
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes;
	-[ -d debian/fvwm-themes/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN;
	-@for t in $(EXTRA_THEMES); do \
		mv -f debian/fvwm-themes/usr/share/fvwm/themes/$$t\
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
	-mv -f debian/changelog debian/extra-changelog

