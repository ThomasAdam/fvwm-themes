## Process this file with automake to create Makefile.in

configdir = @ROOT_PREFIX@@MENU_SYSTEM_PREFIX@
bindir = @ROOT_PREFIX@@MENU_SYSTEM_PREFIX@
FT_DATADIR = @FT_DATADIR@

bin_SCRIPTS = @MENU_SYSTEM_BINSCRIPTS@
config_DATA = @MENU_SYSTEM_CONFIGDATA@

EXTRA_SCRIPTS = fvwm_themes
EXTRA_DIST =  fvwm_themes.h fvwm_themes_data.h \
	fvwm_themes.in fvwm_themes.h.in fvwm_themes_data.h.in

fvwm_themes: fvwm_themes.in Makefile
	rm -f $@
	sed -e 's,xFT_DATADIRx,$(FT_DATADIR),' $(top_srcdir)/menu-system/fvwm_themes.in > $@-t
	mv $@-t $@

fvwm_themes.h: fvwm_themes.h.in Makefile
	rm -f $@
	sed -e 's,xFT_DATADIRx,$(FT_DATADIR),' $(top_srcdir)/menu-system/fvwm_themes.h.in > $@-t
	mv $@-t $@

fvwm_themes_data.h: fvwm_themes_data.h.in Makefile
	rm -f $@
	sed -e 's,xFT_DATADIRx,$(FT_DATADIR),' $(top_srcdir)/menu-system/fvwm_themes_data.h.in > $@-t
	mv $@-t $@

CLEANFILES = $(bin_SCRIPTS) $(config_DATA)
