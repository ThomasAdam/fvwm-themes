### Menus:
Menu1		{File|Pereference|Quit}
Menu2		{Configuration ...|Focus and Placement|Move & Resize|Paging & Mouse Parameters|Transient Windows & Animation|Hints & Advanced Parameters|Preferences...}

### Focus
# no more that 44 characteres for the next 8
FocusPolicy	{ Focus Policy }
ClickToFocus	{Click on a window to get Focus}
MouseFocus	{The Focus follows mouse}
SloppyFocus	{The Focus follows mouse but on the root}
FocusOptions	{ Options for the Focus }
PassClick	{Click to Focus passes a click to the window}
ClickRaise	{A click on a window raises it}
ColorMap	{The "ColorMap" follows the Focus}

### Placement
WinPlacement	{ Window Placement }
SmartRandom	{ Placement is smart if there is free place, stairs if not}
SmartActive	{ Placement is smart if there is free place, active if not}
CleverPlace	{ Placement is always clever }
CleverPlaceP	{ Placement is always clever (percent method) }
DumbActive	{ Placement is always active }
DumbRandom	{ Placement is always stairs }
PlacementOpt	{ Options for the Window Placement }
GrabFocus	{ New windows take the focus }
PPosition	{ Take into account the program specified position (PPosition hint) }

### Move & Resize
MoveResize 	{ Move and Resize }
# No more than 25 characteres for the next 2
OpaqueResize	{Opaque              }
OutLineRes	{Out Line            }
# be exact for the next 2
Resizing	{Resize:                 }
OpaqueMove	{Use Opaque Move for windows which take less than           }
# No more than 20 characteres
ScreenPer	{% of the screen}
# be Exact for the next 6
GeoPosition	{Position of the geometry window:          }
GeoCenter	{Centered               }
GeoTopLeft	{On the top left        }
HideGeoWin	{Hide the geometry window for:             }
HideResize	{Resizing               }
HideMove	{Moving                 }
BuggyMove	{ Activate this option only if your windows flash when moved }
# Snap attraction
SnapAttract	{ Attraction of the Windows during a Move }
# Same size for the next 2
SnapDist	{Distance:     }
SnapContext	{Context:      }
# check
SnapPopup	{Icons & Windows|Same type|Windows|Icons|Icons, Windows & screen|Same type & screen|Windows & screen|Icons & screen}
#  be exact for the next 6 but the 2nd
SnapGrid	{Attraction Grid:      }
ColorOrPix	{ Color or Pixmap XOR for the Lines (and Stroke) }
UseAColor	{Use a Color                  }
UseAPixmap	{Use a Pixmap (xpm)                 }
OneColor	{A Color (pixels):         }
OnePixmap	{A Pixmap (xpm):           }
# check next 2
SColorSel	{Palette}
StartImages	{Images}

### Paging
Paging		{ Paging }
# exact
HPaging		{Horizontal Paging:            }
VPaging		{Vertical Paging:              }
CirPaging	{Circular Paging               }
PagingDelay	{Delay before a page switching:                     }
EdgeResist	{Resistance for moving a window between pages:      }
PanFrame	{Edge thickness when paging (if enabled):              }
# check
PagingList	{Disabled|100%|90%|75%|66%|50%|33%|25%|10%|5%}
Msec		{msec}
Pixels		{pixels}
### Mouse Parameters
MousePara	{ Mouse parameters }
DoubleClick	{Maximal delay for a double click:               }
MouseDrag	{Minimal distance for a mouse drag:              }

### Transient
TransientWin	{ Transient Windows }
TransNDecor	{ Do not decorate transient windows }
TransRaise	{ Raise all window transients together with the parent window }
TransLower	{ Lower all window transients together with the parent window }
TransMore	{ Don't transfer raise/lower action from the transient to the parent }
TransGrab	{ A new transient window automaticaly takes the focus }
### Animation speed
AnimTitle	{ Animation for shading, menus and animated moves }
# be exact
ShadeStep	{Number of steps for shading:          }
ShadeScroll	{ Animate the interior of the window when shading                                 }
AnimMenu	{Menus and animated Move:       }
AnimSpeed	{Speed (msec):          }
AnimSeq		{List of the positions:           }
AnimEx		{Examples:      }
# max 24
AnimList	{Default|Fast|Immediate|Slow|Slow/Fast|Fast/Slow}

### Hints
# no more that 39 characteres in title from 111 to 116
HintsTitle	{ Use the hints of the following types (say yes to all!) }
# no more that 39 characteres for the next 6
MWMDecor	{MWM Decor}
OLDHints	{OLD Hints}
ButShade	{MWM action}
MWMFunctions	{MWM Function}
GNOMEHints	{GNOME Hints}
ButModal	{Ignore modality hints}
### Busy cursor
BusyTitle	{Display the Busy Cursor during execution of the following commands }
### Advanced 
AdvTitle	{ Advanced: see fvwm2 manual page (defaults are good!) }
# be exact for the next 2
ColorLimit	{Limit the numbers of colors to:               }
ModTimeOut	{Maximal time given to a module to return an answer:       }

### Preferences
PrefFile	{ Themes and Files }
BPrefLoaded	{Initially the current component }
MPrefLoaded	{, from the theme }
APrefLoaded	{, has been loaded}
# be exact for the next 3
PrefLoad	{Load the configuration from:        }
PrefSave	{Theme for saving:        }
PrefAnother	{Choose another one:             }
Load		{Load}
Ok		{OK}
Preference	{ Preferences }
# be exact for the next 3 
TryIsGlobal	{Apply "Try" to the all globalfeel screens, not only to the current one }
DefIsGlobal	{Apply "Default" to the all globalfeel screens, not only to the current one }
SaveIsGlobal	{Apply "Save" to the all globalfeel screens, not only to the current one }

### Bindings
#KeyTitle	{Keyboard Bindings}
#MouseTitle	{Mouse Bindings}
#StrokeTitle	{Mouse Stroke Bindings}
#AppBindTitle	{Preferred Applications}

### End
ConfigLoaded	{ Configuration Loaded }
Save		{Save}
SavedInter	{ Modifications Saved (Internally)}
SavedExter	{ Modifications Saved (Globally)}
Try		{Try}
AppliedInter	{ Modifications Applied Internally}
AppliedExter	{ Modifications Applied Globally}
NoEffectHere	{ This has no effect here }
Error		{Error:}
Default		{Default}
Help		{Help}
Quit		{Quit}
