dnl Convenient macros, by Mikhael Goikhman

dnl mg_ARG_WITH(NAME, HELP-STRING, VAR [, DEFAULT-VALUE])
AC_DEFUN(mg_ARG_WITH, [
	AC_DIVERT_PUSH(HELP_WITH)dnl
[$2]
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
AC_DEFUN(mg_DEFAULT_DIR_ARG, [
	var=`echo [$]$1`
	if echo "${var}NONE" | ${AWK} '/^\$|^NONE/ { exit 1 }'; then
		$1=$var
	else
		$1=$2
	fi
	case "[$]$1" in "") echo "No value for $1. Failed."; exit 1;; esac
])

dnl mg_LIST_MINUS(LIST1-VAR, LIST2-VAR, LIST3-VAR)
AC_DEFUN(mg_LIST_MINUS, [
	list1=`echo [$]$1`
	list2=`echo [$]$2`
	$3=`${AWK} -v l1="${list1}" -v l2="${list2}" 'BEGIN {
		split(l1, a1, / +/); split(l2, a2, / +/); l3 = "";
		for (i1 in a1) {
			u = 1; for (i2 in a2) { if (a1[[i1]] == a2[[i2]]) u = 0; }
			if (u) l3 = l3 a1[[i1]] " ";
		} print l3;
	}' | xargs -n 1 echo | sort`
	$3=`echo [$]$3`
])


