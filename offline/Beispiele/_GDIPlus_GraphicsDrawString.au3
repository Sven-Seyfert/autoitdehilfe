#include <GDIPlus.au3>
#include <GUIConstantsEx.au3>

Example()

Func Example()
	Local $hGui, $hGraphic

	; Erstellt eine GUI
	$hGui = GUICreate("GDI+", 400, 300)
	GUISetState(@SW_SHOW)

	; Zeichnet einen String
	_GDIPlus_Startup()
	$hGraphic = _GDIPlus_GraphicsCreateFromHWND($hGui)
	_GDIPlus_GraphicsDrawString($hGraphic, "Hallo Welt", 140, 110)
	_GDIPlus_GraphicsDrawString($hGraphic, "Hallo farbige Welt", 140, 210, Default, Default, Default, 0xFF007F)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	; Ressourcen freigeben
	_GDIPlus_GraphicsDispose($hGraphic)
	_GDIPlus_Shutdown()
EndFunc   ;==>Example
