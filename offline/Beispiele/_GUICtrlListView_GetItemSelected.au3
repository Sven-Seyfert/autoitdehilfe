#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	GUICreate("ListView: Setzt und ermittelt das ausgewählte Item (v" & @AutoItVersion & ")", 500, 300)
	Local $idListview = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState(@SW_SHOW)

	; Setzt das ANSI Format
;~     _GUICtrlListView_SetUnicodeFormat($idListview, False)

	; Fügt die Spalten hinzu
	_GUICtrlListView_AddColumn($idListview, "Items", 100)

	; Fügt die Items hinzu
	_GUICtrlListView_AddItem($idListview, "Item 0")
	_GUICtrlListView_AddItem($idListview, "Item 1")
	_GUICtrlListView_AddItem($idListview, "Item 2")

	; Wählt Item 1 aus
	_GUICtrlListView_SetItemSelected($idListview, 1)
	MsgBox($MB_SYSTEMMODAL, "Information", "Item 1 ausgewählt: " & _GUICtrlListView_GetItemSelected($idListview, 1))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
