## Process this file with automake to produce Makefile.in
## Makefile.am for fvwm-themes.

AUTOMAKE_OPTIONS = foreign
SUBDIRS = bin doc rpm scripts forms locale menu-system
FT_DATA_SUBDIRS = themes images sounds
EXTRA_DIST = images.tar.gz sounds.tar.gz
release = 0.`date +%Y%m%d`

EXTRA_THEMES = @EXTRA_THEMES@

install-data-local:
	FT_DATADIR=@FT_DATADIR@
	GNOME_IMAGES_DIR=@GNOME_IMAGES_DIR@
	SETTINGS_FILE=@SETTINGS_FILE@
	GNOME_ICONS=@GNOME_ICONS@
	KDE2_ICONS=@KDE2_ICONS@
	BUILD_MENUS=@BUILD_MENUS@
	RUN_UPDATEMENU=@RUN_UPDATEMENU@
	UPDATE_MENU=@UPDATE_MENU@

	$(mkinstalldirs) $(FT_DATADIR)
	for dir in $(FT_DATA_SUBDIRS); do \
		chmod -R o-w,go+rX $$dir 2>/dev/null || true; \
		rm -rf "$(DESTDIR)$(FT_DATADIR)/$$dir"; \
		(if test -f $(top_srcdir)/$$dir.tar.gz; then gzip -dc $(top_srcdir)/$$dir.tar.gz || exit 201; \
		else cd $(top_srcdir) && $(TAR) cpf - $$dir || exit 202; fi) | \
		(cd "$(DESTDIR)$(FT_DATADIR)" && $(TAR) xfBp - || exit 203); \
		find "$(DESTDIR)$(FT_DATADIR)/$$dir" -name CVS -exec rm -r {} \; 2>/dev/null; \
	done

	sed -e "s,xGNOME_IMAGES_DIRx,$(GNOME_IMAGES_DIR),g" \
		$(DESTDIR)$(SETTINGS_FILE) > $(DESTDIR)$(SETTINGS_FILE).tmp && \
	mv -f $(DESTDIR)$(SETTINGS_FILE).tmp $(DESTDIR)$(SETTINGS_FILE)

	PATH="$(DESTDIR)$(bindir):$(FVWM_BINDIR):$$PATH"; \
	$(DESTDIR)$(bindir)/fvwm-themes-config --site --reset

	if test "$(BUILD_MENUS)" = "yes"; then \
		$(DESTDIR)$(bindir)/fvwm-themes-menuapp --site --build-menus --remove-popup; \
	fi

	if test "$(GNOME_ICONS)" = "yes"; then \
		$(DESTDIR)$(bindir)/fvwm-themes-images --ft-install --gnome; \
	fi

	if test "$(KDE2_ICONS)" = "yes"; then \
		$(DESTDIR)$(bindir)/fvwm-themes-images --ft-install --kde2; \
	fi

	if test "$(RUN_UPDATEMENU)" = "yes"; then \
		$(UPDATE_MENU); \
	fi

	@echo
	@echo ------------------------------------------------------------------------------
	@echo "fvwm-themes is successfully installed."
	@test x"$(DESTDIR)" != x && echo "DESTDIR prefix is $(DESTDIR)" || true
	@echo "	themes and data: in $(FT_DATADIR)"
	@echo "	shell scripts:   in $(bindir)"
	@echo "	manual pages:    in $(mandir)"
	@echo 'Put fvwm-themes-start as the last command of .Xclients/.xinitrc/.xsession'
	@echo ==============================================================================
	@echo

uninstall-local:
	FT_DATADIR=@FT_DATADIR@

	for dir in $(FT_DATA_SUBDIRS); do \
		rm -rf $(DESTDIR)$(FT_DATADIR)/$$dir; \
	done

	@echo
	@echo ------------------------------------------------------------------------------
	@echo "Ok, fvwm-themes is uninstalled."
	@echo "Don't forget to come back to fvwm-themes later. :-)"
	@echo ==============================================================================
	@echo

dist-hook:
	cp -rpd $(top_srcdir)/themes $(distdir)
	find $(distdir)/themes -name CVS -exec rm -r {} \; 2>/dev/null || true


## ---------------------------------------------------------------------------
## Manage bzip2 archive together with gzip archive
#  Usage:
#    make dist2       # instead of make dist
#    make distcheck2  # instead of make distcheck
#    make distclean2  # instead of make distclean

cleanup-cvs:
	find . -name '.#*' -exec rm \{\} \; >/dev/null

dist2: cleanup-cvs dist
	gzip -dc $(distdir).tar.gz | bzip2 -9 >$(distdir).tar.bz2

distcheck2: distcheck dist2
	@banner="$(distdir).tar.bz2 - ready for distribution"; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$banner"; \
	echo "$$dashes"

distclean2: cleanup-cvs distclean

#    make dist3 - creates main and -extra tarballs (tar.gz)
#    make dist4 - creates main and -extra tarballs (tar.gz and tar.bz2)
#    make dist5 - creates also individual themes tarballs (tar.gz)
#    make dist6 - creates also individual themes tarballs (tar.gz and tar.bz2)

dist3: cleanup-cvs dist
	@$(TAR) xzf $(distdir).tar.gz

	@echo "creating $(PACKAGE)-full-$(VERSION).tar.gz"
	@mv -f $(distdir) $(PACKAGE)-full-$(VERSION)
	@$(TAR) czf $(PACKAGE)-full-$(VERSION).tar.gz $(PACKAGE)-full-$(VERSION)

	@rm -rf $(PACKAGE)-extra-$(VERSION)
	@mkdir $(PACKAGE)-extra-$(VERSION)
	@for t in $(EXTRA_THEMES); do \
		mv -f $(PACKAGE)-full-$(VERSION)/themes/$$t $(PACKAGE)-extra-$(VERSION)/; \
	done

	@echo "creating $(PACKAGE)-$(VERSION).tar.gz"
	@rm -rf $(PACKAGE)-$(VERSION)
	@mv -f $(PACKAGE)-full-$(VERSION) $(PACKAGE)-$(VERSION)
	@$(TAR) czf $(PACKAGE)-$(VERSION).tar.gz $(PACKAGE)-$(VERSION)
	@rm -r $(PACKAGE)-$(VERSION)

	@echo "creating $(PACKAGE)-extra-$(VERSION).tar.gz"
	@$(TAR) czf $(PACKAGE)-extra-$(VERSION).tar.gz $(PACKAGE)-extra-$(VERSION)
	@rm -r $(PACKAGE)-extra-$(VERSION)

dist4: dist3
	@echo "creating $(PACKAGE)-full-$(VERSION).tar.bz2"
	@gzip -dc $(PACKAGE)-full-$(VERSION).tar.gz | bzip2 -9 >$(PACKAGE)-full-$(VERSION).tar.bz2

	@echo "creating $(PACKAGE)-$(VERSION).tar.bz2"
	@gzip -dc $(PACKAGE)-$(VERSION).tar.gz | bzip2 -9 >$(PACKAGE)-$(VERSION).tar.bz2

	@echo "creating $(PACKAGE)-extra-$(VERSION).tar.bz2"
	@gzip -dc $(PACKAGE)-extra-$(VERSION).tar.gz | bzip2 -9 >$(PACKAGE)-extra-$(VERSION).tar.bz2

dist5: dist3
	@$(TAR) xzf $(PACKAGE)-extra-$(VERSION).tar.gz
	@for t in $(EXTRA_THEMES); do \
		echo "creating ft-$$t-$(VERSION).tar.gz"; \
		rm -rf ft-$$t-$(VERSION); \
		mkdir ft-$$t-$(VERSION); \
		mv -f $(PACKAGE)-extra-$(VERSION)/$$t ft-$$t-$(VERSION); \
		$(TAR) czf ft-$$t-$(VERSION).tar.gz ft-$$t-$(VERSION); \
		rm -r ft-$$t-$(VERSION); \
	done
	@rm -r $(PACKAGE)-extra-$(VERSION)

dist6: dist5
	@for t in $(EXTRA_THEMES); do \
		echo "creating ft-$$t-$(VERSION).tar.bz2"; \
		gzip -dc ft-$$t-$(VERSION).tar.gz | bzip2 -9 >ft-$$t-$(VERSION).tar.bz2; \
	done


## ---------------------------------------------------------------------------
## Produce an rpm package using dist or from the given tarball
#  Usage:
#    make rpm-dist
#    make release=1 rpm-dist
#    make rpm-this
#    make version=2.3.22 release=2 rpm-this
#    make rpm-dist cparams='--enable-gnome --quiet' mparams='CFLAGS="-O2 -g"'

rpm-dist: dist3 rpm-this

#    make rpm-dist3 - creates -base and -extra rpms
#    make rpm-dist5 - creates individual themes rpms

rpm-dist3: dist3 rpm-base-this rpm-extra-this

rpm-dist5: dist5 rpm-themes-this

rpm-this:
	(cd rpm && $(MAKE) $(AM_MAKEFLAGS) rpm) || exit 1

rpm-base-this:
	(cd rpm && $(MAKE) $(AM_MAKEFLAGS) rpm-base) || exit 1

rpm-extra-this:
	(cd rpm && $(MAKE) $(AM_MAKEFLAGS) rpm-extra) || exit 1

rpm-themes-this:
	(cd rpm && $(MAKE) $(AM_MAKEFLAGS) rpm-themes) || exit 1

## ---------------------------------------------------------------------------
## Produce an deb package 
# you need fakeroot and dpkg
#
#  Usage:
#    make deb-dist
#    make deb-dist3
#
#    make deb-dist  - creates full(original) debs
#    make deb-dist3 - creates -base and -extra debs


#
#this is for original build debian with debian/rules
#

# first the original rule to build for debian
# it includes all

deb-dist:
	cp -f debian/full-control debian/control
	cp -f debian/full-changelog debian/changelog
	dpkg-buildpackage -rfakeroot 

# build base and extra debs
deb-dist3:


	release=$(release); 
	@echo "creating $(PACKAGE)_base/extra_$(VERSION).deb"
	cp -f debian/base-control debian/control
	cp -f debian/base-changelog debian/changelog
	fakeroot debian/rules clean
	fakeroot debian/rules binary3
	-[ -d debian/fvwm-themes-extra ] || mkdir debian/fvwm-themes-extra
	-[ -d debian/fvwm-themes-extra/usr ] || mkdir debian/fvwm-themes-extra/usr
	-[ -d debian/fvwm-themes-extra/usr/share ] || mkdir debian/fvwm-themes-extra/usr/share
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm
	-[ -d debian/fvwm-themes-extra/usr/share/fvwm/themes ] || mkdir debian/fvwm-themes-extra/usr/share/fvwm/themes
	-[ -d debian/fvwm-themes/DEBIAN ] || mkdir debian/fvwm-themes-extra/DEBIAN
	@for t in $(EXTRA_THEMES); do \
	mv -f debian/fvwm-themes-base/usr/share/fvwm/themes/$$t\
	debian/fvwm-themes-extra/usr/share/fvwm/themes/; \
	done
	fakeroot dh_md5sums
	fakeroot dh_builddeb --filename=$(PACKAGE)-base_$(VERSION)_$(release)_i386.deb
	
	cp -f debian/extra-control debian/control
	cp -f debian/extra-changelog debian/changelog
	fakeroot dh_installdocs
	fakeroot dh_install
	fakeroot dh_link
	fakeroot dh_strip
	fakeroot dh_compress
	fakeroot dh_fixperms
	fakeroot dh_installdeb
	fakeroot dh_shlibdeps
	fakeroot dh_gencontrol 
	fakeroot dh_md5sums
	fakeroot dh_builddeb --filename=$(PACKAGE)-extra_$(VERSION)_$(release)_i386.deb
	rm -fr debian/fvwm-themes-base
	rm -fr debian/fvwm-themes-extra



