#include <GDIPlus.au3>
#include <GUIConstantsEx.au3>

Example()

Func Example()
	Local $hGui, $hGraphic, $hBrush, $hFormat, $hFamily, $hFont, $tLayout

	; Erstellt eine GUI
	$hGui = GUICreate("GDI+", 400, 300)
	GUISetState(@SW_SHOW)

	; Zeichnet einen String
	_GDIPlus_Startup()
	$hGraphic = _GDIPlus_GraphicsCreateFromHWND($hGui)
	$hBrush = _GDIPlus_BrushCreateSolid(0x7F00007F)
	$hFormat = _GDIPlus_StringFormatCreate()
	$hFamily = _GDIPlus_FontFamilyCreate("Arial")
	$hFont = _GDIPlus_FontCreate($hFamily, 12, 2)
	$tLayout = _GDIPlus_RectFCreate(140, 110, 100, 20)
	_GDIPlus_GraphicsDrawStringEx($hGraphic, "Hallo Welt", $hFont, $tLayout, $hFormat, $hBrush)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	; Ressourcen freigeben
	_GDIPlus_FontDispose($hFont)
	_GDIPlus_FontFamilyDispose($hFamily)
	_GDIPlus_StringFormatDispose($hFormat)
	_GDIPlus_BrushDispose($hBrush)
	_GDIPlus_GraphicsDispose($hGraphic)
	_GDIPlus_Shutdown()
EndFunc   ;==>Example
