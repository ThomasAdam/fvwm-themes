dnl Convenient macros, by Mikhael Goikhman

dnl mg_ARG_WITH(NAME, HELP-STRING, VAR [, DEFAULT-VALUE])
AC_DEFUN(mg_ARG_WITH,
[AC_DIVERT_PUSH(AC_DIVERSION_NOTICE)dnl
ac_help="$ac_help
[$2]"
AC_DIVERT_POP()dnl
[#] Check whether --with-[$1] or --without-[$1] was given.
withvar="[${with_]patsubst([$1], -, _)-no}"
if test "$withvar" != no; then
	withvar="[$with_]patsubst([$1], -, _)"
	$3="$withvar"
ifelse([$4], , , [else
	$3=$4
])dnl
fi
])

dnl mg_DEFAULT_DIR_ARG(ARG, DEFAULT_VALUE)
AC_DEFUN(mg_DEFAULT_DIR_ARG,
[var=`echo [$]$1`
if echo "${var}NONE" | awk '/^\$|^NONE/ { exit 1 }'; then
	$1=$var
else
	$1=$2
fi
case "[$]$1" in "") echo "No value for $1. Failed."; exit 1;; esac
])
