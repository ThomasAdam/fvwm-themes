### Menus:
Menu1		{Fichier|Préférences|Quitter}
Menu2		{Configuration ...|Focus et Placement|Déplacement & Dimension|Pagination & Paramètres Souris|Fenètres Transitoires & Animation|Indications & Paramètres Avancés}
#Menu3 		{Racourcis|Clavier|Souris|Applications|Stroke|Préférences ...}
#Menu4		{Look|Bouttons|Couleurs|Styles du Menu|Styles des Fenètres|Curseurs|Préférences ...}
#Menu5		{Divers|Effets de Sons|Fond d'écran|Démarrage|Préférences ...}
#OnlyGlobal	{Seulement Général est implementé}

### Focus
# no more that 44 characteres for the next 8
FocusPolicy	{ Règle pour le Focus }
ClickToFocus	{Cliquer pour avoir le focus}
MouseFocus	{Le focus suit la souris}
SloppyFocus	{Le focus suit la souris sauf sur le fond}
FocusOptions	{ Options pour le Focus }
PassClick	{Passer les cliques qui donnent le focus}
ClickRaise	{Un clique dans une fenètre la met en avant}
ColorMap	{La "ColorMap" suit le Focus}

### Placement
WinPlacement	{ Placement des Fenètres }
SmartRandom	{ Placement intelligent s'il y de la place, aléatoires si non}
SmartActive	{ Placement intelligent s'il y de la place, intéractif si non}
CleverPlace	{ Placement toujours intelligent }
CleverPlaceP	{ Placement toujours intelligent (méthode des pourcentages) }
DumbActive	{ Placement des fenètres toujours interactifs}
DumbRandom	{ Placement des fenètres en "cascade" (jamais interactif)}
PlacementOpt	{ Options pour le Placement des Fenètres }
GrabFocus	{ Les nouvelles fenètres prennent le focus }
PPosition	{ On respecte les indications de positions données par les nouvelles fenètres}

### Move & Resize
MoveResize 	{ Déplacement et Redimensionnement }
# No more than 25 characteres for the next 2
OpaqueResize	{Opaque              }
OutLineRes	{Avec des lignes     }
# be exact for the next 2
Resizing	{Redimensionnement:      }
OpaqueMove	{Déplacement Opaque pour les fenètres prenant moins de      }
# No more than 20 characteres
ScreenPer	{% de l'écran}
# be Exact for the next 6
GeoPosition	{Position de la fenètre de géometrie:      }
GeoCenter	{Centrée                }
GeoTopLeft	{En Haut à gauche       }
HideGeoWin	{Cacher la fenètre de géometrie pour:      }
HideResize	{Redimensionnement      }
HideMove	{Déplacement            }
BuggyMove	{Activer cette option seulment si les fenètres "flash" lors du déplacement}
# Snap attraction
SnapAttract	{Attraction des Fenètres lors du Déplacement}
# Same size for the next 2
SnapDist	{Distance:     }
SnapContext	{Contexte:     }
# check
SnapPopup	{Icones & Fenètres|Même type|Fenètres|Icones|Icones, Fenètres & écran|Même type & écran|Fenètres & écran|Icones & écran}
#  be exact for the next 6
SnapGrid	{Grille d'attraction:      }
ColorOrPix	{Couleur ou Pixmap XOR pour les "lignes" (et Stroke)}
UseAColor	{Utiliser une couleur          }
UseAPixmap	{Utiliser un pixmap (xpm)           }
OneColor	{Une couleur (pixels):      }
OnePixmap	{Un Pixmap (xpm):           }
# check next 2
SColorSel	{Palette}
StartImages	{Images}

### Paging
Paging		{ Pagination }
# exact
HPaging		{Pagination Horizontale:       }
VPaging		{Pagination Verticale:         }
CirPaging	{Pagination Ciculaire          }
PagingDelay	{Délais avant le changement de page:                }
EdgeResist	{Résistance pour changer de page une fenètre:       }
PanFrame	{Épaisseur des fenètres de pagination (si active):     }
# check
PagingList	{Non active|100%|90%|75%|66%|50%|33%|25%|10%|5%}
Msec		{ms}
Pixels		{pixels}
### Mouse Parameters
MousePara	{Paramètres pour la Souris}
DoubleClick	{Délais maximum pour un double clique:           }
MouseDrag	{Distance minimal pour un porté de souris:       }

### Transient
TransientWin	{ Fenètres Transitoires }
TransNDecor	{ Ne pas décorer les fenètres transitoires }
TransRaise	{ Si la fenètre maitre est mis en avant ces fenètres transitoires le sont aussi   }
TransLower	{ Si la fenètre maitre est mis en arrière ces fenètres transitoires le sont aussi }
TransMore	{ Activer la réciproque des 2 options précédentes (si elles sont actives)         }
TransGrab	{ Les fenètres transitoires prennent automatiquement le focus                     }
### Animation speed
AnimTitle	{Vitesse d'animations pour l'ombrage, les menus et les déplacements (non interactifs)}
# be exact
ShadeStep	{Nombre d'étapes pour l'ombrage:       }
ShadeScroll	{ Animer l'intérieur de la fenètre lors d'un ombrage                              }
AnimMenu	{Menus et Déplacements:         }
AnimSpeed	{Vitesse (ms):          }
AnimSeq		{Liste des déplacements:          }
AnimEx		{Exemples:      }
# max 24
AnimList	{Défault|Rapide|Immédiat|Lent|Lent/Rapide|Rapide/Lent}

### Hints
# no more that 39 characteres in title from 111 to 116
HintsTitle	{ Accèpter les Indications du type suivant: (dites oui à tout!)}
# no more that 39 characteres for the next 6
MWMDecor	{Décores MWM}
OLDHints	{OLD}
ButShade	{Actions MWM}
MWMFunctions	{Fonctions MWM}
GNOMEHints	{GNOME}
ButModal	{À l'exception des fenètres modales}
### Busy cursor
BusyTitle	{Afficher le curseur "je suis occupé" lors des commandes suivantes}
### Advanced 
AdvTitle	{Avancés: voir la page de manuel de fvwm2 (les défauts sont bons!)}
# be exact for the next 2
ColorLimit	{Limité le nombre de couleurs à:               }
ModTimeOut	{Temps accordé à un module pour obtenir une réponse:        }
	
### Preferences
PrefFile	{Thèmes et Fichers}
BPrefLoaded	{Au démarrage la composente } 
MPrefLoaded	{ courrante, provenant de "}
APrefLoaded	{", a été chargé}
# be exact for the next 3
PrefLoad	{Charger la configuration de:        }
PrefSave	{Thème pour sauvé:        }
PrefAnother	{En choisir un autre:            }
Load		{Charger}
Ok		{OK}
Preference	{Préférences}
# be exact for the next 3 
TryIsGlobal	{"Essayer" s'applique à tout et pas seulement à la page courrante                          }
DefIsGlobal	{"Défauts" recharge les défauts pour tout et pas seulement pour la page courrante           }
SaveIsGlobal	{"Sauver" s'applique à tout et pas seulement à la page courrant                            }
### Bindings
#KeyTitle	{Racourcis Clavier}
#MouseTitle	{Racourcis Souris}
#StrokeTitle	{Racourcis "Stroke"}
#AppBindTitle    {Applications Préférés}

### End
ConfigLoaded	{Configuration Chargée}
Save		{Sauver}
SavedInter	{Changements Sauvés (Localement)}
SavedExter	{Changements Sauvés (Globalement)}
Try		{Essayer}
AppliedInter	{Changement Appliqués Localement}
AppliedExter	{Changement Appliqués Globalement}
NoEffectHere	{Ceci ne fait rien ici}
Error		{Erreur:}
Default		{Défauts}
Help		{Aide}
Quit		{Quitter}
