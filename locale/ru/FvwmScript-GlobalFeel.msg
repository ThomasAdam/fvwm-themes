[Font]
ChangeFont	{1}
SelFont		{-cronyx-times-bold-r-*-*-14-*-*-*-*-*-koi8-r}
ShadeFont	{-cronyx-times-medium-r-*-*-14-*-*-*-*-*-koi8-r}
FixedFont	{-cronyx-fixed-medium-r-semicondensed--*-*-*-*-*-*-koi8-r}

[Msg]
### Menus:
#Menu1		{Файл|Персональные темы|Выход}
Menu1		{Файл|Установки...|Выход}
Menu2		{Configuration...|Фокус и Размещение|Перемещение u Размер|Листание и Параметры Мышки|Временные Окна и Анимация|Хинты и Продвинутые Параметры|Установки...}
#Menu3		{Привязки|Клавиатура|Мышка|Приложения|Штрихи Мышки|Установки...}
#Menu4		{Вид|Кнопки|Цвета|Стили Меню|Вид Окон|Курсоры|Установки...}
#Menu5		{Разное|Звуковые Эффекты|Фон|Запуск|Установки...}
#OnlyGlobal	{Пока доступно лишь Среда}

### Focus
# no more that 44 characteres for the next 8
FocusPolicy	{ Политика Фокуса }
ClickToFocus	{Щелчок на окно для получения Фокуса}
MouseFocus	{Фокус следует за мышью}
SloppyFocus	{Фокус следует за мышью кроме фона}
FocusOptions	{ Опции для Фокуса }
PassClick	{Щелчок для Фокуса пропускается далее окну}
ClickRaise	{Щелчок для Фокуса повышает окно}
ColorMap	{Цветовая Карта следует за Фокусом}

### Placement
WinPlacement	{ Размещение Окон }
SmartRandom	{ Размещение умное при наличии места, иначе лесенкой}
SmartActive	{ Размещение умное при наличии места, иначе активное}
CleverPlace	{ Размещение всегда умное }
CleverPlaceP	{ Размещение всегда умное (учитывая проценты) }
DumbActive	{ Размещение всегда активное }
DumbRandom	{ Размещение всегда лесенкой }
PlacementOpt	{ Опции для Размещения Окон }
GrabFocus	{ Новое окно получает фокус }
PPosition	{ Учитывать позицию указанную программой (PPosition hint) }

### Move & Resize
MoveResize 	{ Перемещение u Размер }
# No more than 25 characteres for the next 2
OpaqueResize	{Непрозрачное        }
OutLineRes	{Прозрачное          }
# be exact for the next 2
Resizing	{Изменение Размера Окон: }
OpaqueMove	{Непрозрачное Перемещение для окон занимающих менее чем     }
# No more than 20 characteres
ScreenPer	{% экрана}
# be Exact for the next 6
GeoPosition	{Позиция окна показывающего геометрию окон:}
GeoCenter	{В центре экрана        }
GeoTopLeft	{В левом верхнем углу   }
HideGeoWin	{Скрыть окно с геометрией окон при:        }
HideResize	{Изменении Размера      }
HideMove	{Перемещении          }
BuggyMove	{ Попробывать эту опцию, лишь если окна перемещаются с треском }
# Snap attraction
SnapAttract	{ Притяжение к окнам при перемещении }
# Same size for the next 2
SnapDist	{Дистанция:    }
SnapContext	{Контекст:     }
# check
SnapPopup	{Иконки и Окна|Один и тот же тип|Окна|Иконки|Иконки, Окна и Экран|Тот же тип и Экран|Окна и Экран|Иконки и Экран}
#  be exact for the next 6 but the 2nd
SnapGrid	{Сетка Притяжения:     }
ColorOrPix	{ XOR для линий и штрихов используя Цвет или Картинку }
UseAColor	{Использовать Цвет            }
UseAPixmap	{Использовать Картинку (xpm)        }
OneColor	{Цвет пикселей:            }
OnePixmap	{Картинка (xpm):           }
# check next 2
SColorSel	{Палитра}
StartImages	{Картинки}

### Paging
Paging		{ Листание }
# exact
HPaging		{Горизонтальное Листание:      }
VPaging		{Вертикальное Листание:        }
CirPaging	{Круговое Листание             }
PagingDelay	{Пауза между переключением страниц:                 }
EdgeResist	{Стойкость для перемещения окон между страницами:   }
PanFrame	{Толщина края при листании (когда разрешено):          }
# check
PagingList	{Запрещено|100%|90%|75%|66%|50%|33%|25%|10%|5%}
Msec		{мсек}
Pixels		{пикселей}
### Mouse Parameters
MousePara	{ Параметры Мышки }
DoubleClick	{Максимальная пауза для двойного щелчка:         }
MouseDrag	{Минимальная дистанция для перетяжения мышкой:   }

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
ButShade	{MWM Action}
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
