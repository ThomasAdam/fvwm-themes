//# colors@plainb

/*
# ****************************************************************************
#
# I.   FVWM Colorsets (0 to 9)
#       I.1. Default Colorsets
#       I.2. Window Decorations
#       I.3. Menu Colorsets
#
# II.  Module Colorsets (10 to 29)
#       II.1. Common Colorsets
#       II.2. Window List Module Colorsets
#       II.3. Other Module Colorsets
#       II.4. External Colorsets
#
# III. Application Colorsets (30 to 35)
#
# IV.  Start/Stop functions
#
# ****************************************************************************
*/

/*
# ============================================================================
# I. FVWM Colorsets
# ============================================================================

# ----------------------
# I.1. Default Colorsets
# ----------------------
*/

/*
# for feedback windows (like geometry window and NoteMessage) and FvwmScroll
#
*/
#if (DEF_STRENGTH == 3)
Colorset 0 fg TRAD_HIGH_LIGHT, bg TRAD_DEF_MID
#else
#if (DEF_STRENGTH == 1)
Colorset 0 fg TRAD_HIGH_DARK, bg TRAD_DEF_MID
#else
Colorset 0 fg TRAD_HIGH_LIGHT, bg TRAD_DEF_DARK
#endif
#endif

/*
# -----------------------
# I.2. Window Decorations
# -----------------------
*/

/*
# The following colors are used in FvwmPager for the window colors
# and in a title bar of windows (shade/hilight colors, computed from
# the bg color, but might be specified directly by sh and hi).
# The title bar background is defined below using TitleStyle.

# window title, inactive and active
#
*/
#if (DEF_STRENGTH == 3)
Colorset 1 fg DEF_LIGHT, bg DEF_MID, Plain, NoShape
#else
Colorset 1 fg DEF_DARK, bg DEF_MID, Plain, NoShape
#endif
#if (ACT_STRENGTH == 1)
Colorset 2 fg ACT_DARK, bg ACT_MID, Plain, NoShape
#else
Colorset 2 fg ACT_PALE, bg ACT_MID, Plain, NoShape
#endif

//# window borders, inactive and active

Colorset 3 fg DEF_FORE, bg DEF_MID, Plain, NoShape
Colorset 4 fg ACT_FORE, bg ACT_MID, Plain, NoShape

DestroyFunc FuncFvwmDecorBackground
AddToFunc   FuncFvwmDecorBackground
#if (ACT_STRENGTH == 1)
+ I AddTitleStyle ActiveUp   (VGradient 64 2 ACT_PALE 40 ACT_MID 60 ACT_DARK)
#else
+ I AddTitleStyle ActiveUp   (VGradient 64 2 ACT_LIGHT 40 ACT_MID 60 ACT_DARK)
#endif
#if (ACT_STRENGTH == 1)
+ I AddTitleStyle ActiveDown   (VGradient 64 2 ACT_DARK 60 ACT_MID 40 ACT_PALE)
#else
+ I AddTitleStyle ActiveDown   (VGradient 64 2 ACT_DARK 60 ACT_MID 40 ACT_LIGHT)
#endif
#if (DEF_STRENGTH == 1)
+ I AddTitleStyle Inactive   (VGradient 64 2 DEF_PALE 40 DEF_MID 60 DEF_DARK)
#else
+ I AddTitleStyle Inactive   (VGradient 64 2 DEF_LIGHT 40 DEF_MID 60 DEF_DARK)
#endif
//+ I AddTitleStyle ToggledActiveUp   (Solid ACT_MID -- Raised)
//+ I AddTitleStyle ToggledActiveDown (Solid ACT_MID -- Raised)
//+ I AddTitleStyle ToggledInactive   (Solid DEF_MID -- Raised)
+ I AddTitleStyle	(Pixmap decor/mid_3bars.xpm -- right)
+ I AddTitleStyle	(Pixmap decor/mid_3bars2.xpm -- left)
#if (ACT_STRENGTH == 1)
+ I ButtonStyle All	 ActiveUp   (VGradient 64 2 ACT_PALE 40 ACT_MID 60 ACT_DARK -- Raised)
#else
+ I ButtonStyle All	 ActiveUp   (VGradient 64 2 ACT_LIGHT 40 ACT_MID 60 ACT_DARK -- Raised)
#endif
#if (ACT_STRENGTH == 1)
+ I ButtonStyle All	 ActiveDown   (VGradient 64 2 ACT_DARK 60 ACT_MID 40 ACT_PALE -- Raised)
#else
+ I ButtonStyle All	 ActiveDown   (VGradient 64 2 ACT_DARK 60 ACT_MID 40 ACT_LIGHT -- Raised)
#endif
#if (DEF_STRENGTH == 1)
+ I ButtonStyle All	 Inactive   (VGradient 64 2 DEF_PALE 40 DEF_MID 60 DEF_DARK -- flat)
#else
+ I ButtonStyle All	 Inactive   (VGradient 64 2 DEF_LIGHT 40 DEF_MID 60 DEF_DARK -- flat)
#endif

/*
# -------------------
# I.3. Menu Colorsets
# -------------------
*/

//# inactive menu item fg+bg and menu face if any

#if (DEF_STRENGTH == 3)
Colorset 5 fg DEF_PALE, bg DEF_MID, Plain, NoShape
#else
Colorset 5 fg DEF_FORE, bg DEF_MID, Plain, NoShape
#endif

//# active menu item fg+bg

#if (DEF_STRENGTH == 3)
Colorset 6 fg DEF_PALE, bg DEF_MID, Plain, NoShape
#else
Colorset 6 fg DEF_FORE, bg DEF_LIGHT, Plain, NoShape
#endif

//# greyed menu item fg

Colorset 7 fg DEF_LIGHT, bg DEF_MID, Plain, NoShape

/*
# -------------------------------------------------
# Colorsets 8 and 9 are reserved for the future use.

# ============================================================================
# II. Module Colorsets
# ============================================================================

# ----------------------
# II.1. Common Colorsets
# ----------------------

# default for modules
# For FvwmButtons, FvwmPager, can be also used for FvwmIconMan, FvwmIconBox.
*/

Colorset 10 fg DEF_PALE, bg DEF_DARK, Plain, NoShape

//# default hilight for modules
//# For hilighting a part of a button bar (some swallowed apps for example).

Colorset 11 fg HIGH_DARK, bg HIGH_LIGHT, Plain, NoShape

//# special or funny: a gradient or a pixmap
//# May be used in certain FvwmButtons, FvwmIconMan, FvwmIconBox.

#if (DEF_STRENGTH == 3)
Colorset 12 fg DEF_PALE, bg DEF_MID, \
	VGradient 20 DEF_MID DEF_DARK, NoShape
#else
Colorset 12 fg DEF_FORE, bg DEF_MID, \
	VGradient 20 DEF_MID DEF_LIGHT, NoShape
#endif

//# swallowed window: the hilight and shadow colors should be defined
//# (-hd of xclock and -hl of xload use sh, and -hl of xclock uses hi)

Colorset 13 fg DEF_PALE, bg DEF_DARK, hi DEF_FORE, sh DEF_LIGHT, \
	Plain, NoShape

//# default #2
//# FvwmPager or to get more colors in FvwmButtons, can be set to 10.

Colorset 14 fg DEF_PALE, bg DEF_DARK, Plain, NoShape

//# default hilight #2
//# FvwmPager or to get more colors in FvwmButtons, can be set to 11.

Colorset 15 fg HIGH_PALE, bg HIGH_DARK, Plain, NoShape

//# tips/balloons (TaskBar and FvwmPager)

Colorset 16 fg DEF_FORE, bg DEF_LIGHT, Plain, NoShape

/*
# ----------------------------------
# II.2. Window List Module Colorsets
# ----------------------------------
*/

//# standard item
#if (DEF_STRENGTH == 3)
Colorset 17 fg DEF_PALE, bg DEF_MID, Plain, NoShape
#else
Colorset 17 fg DEF_FORE, bg DEF_MID, Plain, NoShape
#endif

//# active item
#if (ACT_STRENGTH == 3)
Colorset 18 fg ACT_PALE, bg ACT_MID, Plain, NoShape
#else
Colorset 18 fg ACT_FORE, bg ACT_MID, Plain, NoShape
#endif

//# iconified item
Colorset 19 fg DEF_PALE, bg DEF_DARK, Plain, NoShape

//# pointed item
#if (ACT_STRENGTH == 3)
Colorset 20 fg HIGH_LIGHT, bg ACT_MID, Plain, NoShape
#else
#if (ACT_STRENGTH == 1)
Colorset 20 fg HIGH_DARK, bg ACT_MID, Plain, NoShape
#else
Colorset 20 fg HIGH_LIGHT, bg ACT_DARK, Plain, NoShape
#endif
#endif

/*
# ----------------------------
# II.3. Other Module Colorsets
# ----------------------------
*/

//# FvwmIdent

#if (DEF_STRENGTH == 3)
Colorset 21 fg DEF_LIGHT, bg DEF_DARK, Plain, NoShape
#else
Colorset 21 fg DEF_FORE, bg DEF_LIGHT, Plain, NoShape
#endif

//# FvwmConsole

Colorset 22 fg DEF_PALE, bg DEF_DARK, Plain, NoShape

//# transparent
//#*FvwmTheme: Colorset 23 fg $[fg.cs10], bg $[bg.cs10], Transparent, Plain, NoShape

/*
# ------------------------
# II.4. External Colorsets
# ------------------------
*/

/*
# ----------------------------
# reserved for modules@: 24-25

# ----------------------------------
# reserved for the future use: 26-28

# temporary colorset: 29, has no static definition, used dynamically
*/

/*
# ============================================================================
# III. Application Colorsets
# ============================================================================
*/

//# regular terminal (xterm, rxvt, Eterm)

Colorset 30 fg black, bg GhostWhite, Plain, NoShape

//# admin terminal (su xterm)

Colorset 31 fg HIGH_FORE, bg HIGH_PALE, Plain, NoShape

//# remote terminal (ssh, telnet)

Colorset 32 fg DEF_PALE, bg DEF_DARK, Plain, NoShape

//# viewer terminal (man, less, tail -f)

Colorset 33 fg DEF_FORE, bg DEF_PALE, Plain, NoShape

//# application run in the terminal, text editor using ft-xrdb

Colorset 34 fg DEF_FORE, bg DEF_PALE, Plain, NoShape

//# dialog main background (FvwmScript, FvwmForm, xmessage, ft-xrdb)

Colorset 35 fg DEF_FORE, bg DEF_MID, Plain, NoShape

//# dialog text area (FvwmScript, FvwmForm, xmessage, ft-xrdb)

Colorset 36 fg DEF_FORE, bg DEF_PALE, Plain, NoShape

/*
# --------------------------------------------------
# Colorsets 37 to 39 are reserved for the future use.

# ============================================================================
# IV. Start/Stop Functions:
# ============================================================================

# These functions are executed when you enter (Start) and when you leave
# (Stop) this component. For example, in colors@blackbox they are used to
# set/unset a good window "transparency" style ParentalRelativity/Opacity;
# in colors@cde and colors@luthien these functions are used for more things.
*/

DestroyFunc FuncFvwmStartColors
AddToFunc   FuncFvwmStartColors

DestroyFunc FuncFvwmStopColors
AddToFunc   FuncFvwmStopColors
