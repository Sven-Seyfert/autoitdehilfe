#include <GUIConstantsEx.au3>
#include <GuiTreeView.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>

Example()

Func Example()
	GUICreate("TreeView: Zeigt an, ob das Item momentan sichtbar ist (v" & @AutoItVersion & ")", 600, 300)

	Local $iStyle = BitOR($TVS_EDITLABELS, $TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS)
	Local $idTreeView = GUICtrlCreateTreeView(2, 2, 396, 268, $iStyle, $WS_EX_CLIENTEDGE)
	GUISetState(@SW_SHOW)

	; Setzt das ANSI Format
	_GUICtrlTreeView_SetUnicodeFormat($idTreeView, False)

	_GUICtrlTreeView_BeginUpdate($idTreeView)
	Local $ahItem[100]
	For $x = 0 To 99
		$ahItem[$x] = _GUICtrlTreeView_Add($idTreeView, 0, StringFormat("[%02d] Neues Item", $x))
	Next
	_GUICtrlTreeView_EndUpdate($idTreeView)

	Local $iRand = Random(40, 99, 1)
	MsgBox($MB_SYSTEMMODAL, "Information", StringFormat("Index %d sichtbar: %s", $iRand, _GUICtrlTreeView_GetVisible($idTreeView, $ahItem[$iRand])))
	_GUICtrlTreeView_EnsureVisible($idTreeView, $ahItem[$iRand])
	MsgBox($MB_SYSTEMMODAL, "Information", StringFormat("Index %d sichtbar: %s", $iRand, _GUICtrlTreeView_GetVisible($idTreeView, $ahItem[$iRand])))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example
GUIDelete()
