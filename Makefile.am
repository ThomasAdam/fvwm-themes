## Process this file with automake to produce Makefile.in
## Makefile.am for fvwm-themes.

AUTOMAKE_OPTIONS = foreign
SUBDIRS = bin doc rpm scripts forms locale
FT_DATA_SUBDIRS = themes images sounds
FT_MODULE_SUBDIRS = 
EXTRA_DIST = images.tar.gz sounds.tar.gz

install-data-local:
	FT_DATADIR=@FT_DATADIR@
	GNOME_IMAGES_DIR=@GNOME_IMAGES_DIR@
	SETTINGS_FILE=@SETTINGS_FILE@
	GNOME_ICONS=@GNOME_ICONS@
	BUILD_MENUS=@BUILD_MENUS@

	$(mkinstalldirs) $(FT_DATADIR)
	for dir in $(FT_DATA_SUBDIRS); do \
		chmod -R o-w,go+rX $$dir 2>/dev/null; \
		rm -rf "$(FT_DATADIR)/$$dir"; \
		(if test -f $$dir.tar.gz; then gzip -dc $$dir.tar.gz; else \
		tar cpf - $$dir; fi) | (cd "$(FT_DATADIR)" && tar xfBp -); \
		find "$(FT_DATADIR)/$$dir" -name CVS -exec rm -r {} \; 2>/dev/null ; \
	done

	sed -e "s,xGNOME_IMAGES_DIRx,$(GNOME_IMAGES_DIR),g" \
	$(SETTINGS_FILE) > $(SETTINGS_FILE).tmp; \
	mv -f $(SETTINGS_FILE).tmp $(SETTINGS_FILE)

	$(bindir)/fvwm-themes-config --site --reset

	if test "$(BUILD_MENUS)" = "yes"; then \
		$(bindir)/fvwm-themes-menuapp --site --build-menus --remove-popup; \
	fi

	if test "$(GNOME_ICONS)" = "yes"; then \
		$(bindir)/fvwm-themes-images --ft-install; \
	fi

	@echo
	@echo ------------------------------------------------------------------------------
	@echo "fvwm-themes is successfully installed."
	@echo "	themes and data: in $(FT_DATADIR)"
	@echo "	shell scripts:   in $(bindir)"
	@echo 'Put fvwm-themes-start as the last command of .Xclients/.xinitrc/.xsession'
	@echo ==============================================================================
	@echo

uninstall-local:
	FT_DATADIR=@FT_DATADIR@

	for dir in $(FT_DATA_SUBDIRS); do \
		rm -rf $(FT_DATADIR)/$$dir; \
	done

	@echo
	@echo ------------------------------------------------------------------------------
	@echo "Ok, fvwm-themes is uninstalled."
	@echo "Don't forget to come back to fvwm-themes later. :-)"
	@echo ==============================================================================
	@echo

dist-hook:
	cp -rpd $(srcdir)/themes $(distdir)
	find $(distdir)/themes -name CVS -exec rm -r {} \; 2>/dev/null || true


## ---------------------------------------------------------------------------
## Manage bzip2 archive together with gzip archive
#  Usage:
#    make dist2       # instead of make dist
#    make distcheck2  # instead of make distcheck
#    make distclean2  # instead of make distclean

dist2: dist
	gzip -dc $(distdir).tar.gz | bzip2 -9c >$(distdir).tar.bz2

distcheck2: dist2 distcheck
	@banner="$(distdir).tar.bz2 - ready for distribution"; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$banner"; \
	echo "$$dashes"

distclean2: distclean

## ---------------------------------------------------------------------------
## Produce an rpm package using dist or from the given tarball
#  Usage:
#    make rpm-dist
#    make release=1 rpm-dist
#    make rpm-this
#    make version=2.3.22 release=2 rpm-this
#    make rpm-dist cparams='--enable-kanji --quiet' mparams='CFLAGS="-O2 -g"'

rpm-dist: dist rpm-this

rpm-this:
	(cd rpm && $(MAKE) $(AM_MAKEFLAGS) rpm) || exit 1
