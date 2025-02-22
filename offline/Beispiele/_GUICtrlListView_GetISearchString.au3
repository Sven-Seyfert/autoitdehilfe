#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	GUICreate("ListView Ermittelt ISearch (v" & @AutoItVersion & ")", 400, 300)

	Local $idListview = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUICtrlSetStyle($idListview, $LVS_ICON)
	GUISetState(@SW_SHOW)

	; Setzt das ANSI Format
;~     _GUICtrlListView_SetUnicodeFormat($idListview, False)

	; Lädt die Bilder
	Local $hImage = _GUIImageList_Create()
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($idListview, 0xFF0000, 16, 16))
	_GUICtrlListView_SetImageList($idListview, $hImage, 0)

	_GUICtrlListView_BeginUpdate($idListview)
	For $x = 1 To 10
		_GUICtrlListView_InsertItem($idListview, "Item " & $x, -1, 0)
	Next
	_GUICtrlListView_EndUpdate($idListview)

	Send("Item 2")

	; Ermittelt den inkrementellen Suchstring
	MsgBox(8256, "Information", "Inkrementeller Suchstring: " & _GUICtrlListView_GetISearchString($idListview))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	GUIDelete()
EndFunc   ;==>Example
