#include <GuiConstantsEx.au3>
#include <GuiTab.au3>

Example()

Func Example()
	Local $idTab

	; Erstellt eine GUI
	GUICreate("Tab-Control: Setzt die minimale Tabbreite", 400, 300)
	$idTab = GUICtrlCreateTab(2, 2, 396, 296)
	GUISetState(@SW_SHOW)

	; Fügt Tabs hinzu
	_GUICtrlTab_SetMinTabWidth($idTab, 80)
	_GUICtrlTab_InsertItem($idTab, 0, "Tab 1")
	_GUICtrlTab_InsertItem($idTab, 1, "Tab 2")
	_GUICtrlTab_InsertItem($idTab, 2, "Tab 3")

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
