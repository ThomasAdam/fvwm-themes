## Process this file with automake to produce Makefile.in
## Makefile.am for fvwm-themes.

AUTOMAKE_OPTIONS = foreign
SUBDIRS = bin scripts forms
FT_DATA_SUBDIRS = themes images sounds
FT_MODULE_SUBDIRS = 
EXTRA_DIST = doc images.tar.gz sounds.tar.gz

install-data-local:
	FT_DATADIR=@FT_DATADIR@
	GNOME_IMAGES_DIR=@GNOME_IMAGES_DIR@
	SETTINGS_FILE=@SETTINGS_FILE@
	GNOME_ICONS=@GNOME_ICONS@

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
#	# I see no reason to remove Popup ~ with MissingSubmenuFunc.
#	$(bindir)/fvwm-themes-menuapp --site --build-menus --remove-popup
	$(bindir)/fvwm-themes-menuapp --site --build-menus

	if test "$(GNOME_ICONS)" = "yes"; then \
		$(bindir)/fvwm-themes-images --ft-install; \
	fi

	@echo
	@echo ------------------------------------------------------------------------------
	@echo "fvwm-themes is successfully installed."
	@echo "	themes and data: in $(FT_DATADIR)"
	@echo "	shell scripts:   in $(bindir)"
	@echo 'Put fvwm-themes-start in .Xclients/.xinitrc'
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
## If we want bzip2 archives too (dist2, distcheck2, distclean2)
dist2: dist
	gzip -dc $(distdir).tar.gz | bzip2 -9c >$(distdir).tar.bz2

distcheck2: dist2 distcheck
	@banner="$(distdir).tar.bz2 - ready for distribution"; \
	dashes=`echo "$$banner" | sed s/./=/g`; \
	echo "$$banner"; \
	echo "$$dashes"

distclean2: distclean

## Dirty trick to work around automake not working with symbolic links.
## 'make predist' should be run before 'make dist'.
predist predist2:
	for file in Makefile */Makefile; do \
		sed -e 's/ cp -p/ cp -dp/g' -e 's/$$(TAR) chozf/$$(TAR) czf/g' \
			<$$file >$$file.tmp && mv $$file.tmp $$file; \
	done
