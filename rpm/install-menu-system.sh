#!/bin/sh
# A workaround script so that the rpm can install or not
# the fvwm themes Debian menu system stuff

DO="$1"
MY_CWD=/usr/share/fvwm/menu-system
MM_CONF_DIR=/etc/menu-methods
WM_SESSION_DIR=/etc/X11/wmsession.d
FILES="fvwm_themes.h fvwm_themes fvwm_themes_data.h"

if test ! -d $MY_CWD; then
    exit 0
fi

cd $MY_CWD

if test ! -d /etc/menu-methods -o ! -x /usr/bin/update-menus; then
	DO=""
fi

if test "x$DO" = "xInstall"; then
	tar xzf rpm-wa.tar.gz
	for f in $FILES; do
		cp -f rpm-wa/$f $MM_CONF_DIR/
		rm -f rpm-wa/$f
	done
	chmod +x $MM_CONF_DIR/fvwm_themes
	rmdir rpm-wa
	/usr/bin/update-menus
elif test "x$DO" = "xUninstall"; then 
        for f in $FILES; do
		rm -f $MM_CONF_DIR/$f
	done
	rm -f ft-menu
	/usr/bin/update-menus
fi

# take the occasion to handle the wmsession.d directory
if test ! -d $WM_SESSION_DIR; then
	exit 0
fi

if test "x$DO" = "xInstall"; then
	echo "NAME=fvwm-themes
DESC=FVWM Themes
EXEC=/usr/bin/fvwm-themes-start
SCRIPT:
if test -x $HOME/.xinitrc-fvwm; then
	. $HOME/.xinitrc-fvwm
fi
exec fvwm-themes-start"> $WM_SESSION_DIR/fvwm-themes
	[ -x /usr/sbin/fndSession ] && /usr/sbin/fndSession || true
elif test "x$DO" = "xUninstall"; then
	rm -f $WM_SESSION_DIR/fvwm-themes
	[ -x /usr/sbin/fndSession ] && /usr/sbin/fndSession || true
fi

