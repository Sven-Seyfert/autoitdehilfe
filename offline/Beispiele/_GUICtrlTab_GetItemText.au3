#include <GUIConstantsEx.au3>
#include <GuiTab.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	; Erstellt eine GUI
	GUICreate("Tab-Control: Setzt und ermittelt den Itemtext (v" & @AutoItVersion & ")", 500, 300)
	Local $idTab = GUICtrlCreateTab(2, 2, 396, 296)
	GUISetState(@SW_SHOW)

	; Fügt Tabs hinzu
	_GUICtrlTab_InsertItem($idTab, 0, "Tab 0")
	_GUICtrlTab_InsertItem($idTab, 1, "Tab 1")
	_GUICtrlTab_InsertItem($idTab, 2, "Tab 2")

	; Ermittelt/Setzt den Text des Tab 0
	_GUICtrlTab_SetItemText($idTab, 0, "Neuer Text")
	MsgBox($MB_SYSTEMMODAL, "Information", "Tab 0 Text: " & _GUICtrlTab_GetItemText($idTab, 0))

	; Die Schleife wiederholt sich, bis der Benutzer eine Beenden-Aktion auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
