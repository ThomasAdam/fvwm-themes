DestroyFunc FuncFvwmStartThemeBackground
AddToFunc   FuncFvwmStartThemeBackground
#if (DEF_STRENGTH == 1)
+ I Exec exec convert -modulate 125,80,CS_HUE_PERCENT $./images/background/red_lace10.png - | display -window root -
#else
#if (DEF_STRENGTH == 3)
+ I Exec exec convert -modulate 75,140,CS_HUE_PERCENT $./images/background/red_lace10.png - | display -window root -
#else
+ I Exec exec convert -modulate 100,100,CS_HUE_PERCENT $./images/background/red_lace10.png - | display -window root -
#endif
#endif

DestroyFunc FuncFvwmStopThemeBackground
AddToFunc   FuncFvwmStopThemeBackground
+ I Nop


