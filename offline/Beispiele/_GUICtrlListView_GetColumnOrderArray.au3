#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $a_Order[5] = [4, 3, 2, 0, 1], $idListView

	GUICreate("ListView: Ermittelt die Spaltenreihenfolge (Array, intern)", 400, 325)
	$idListView = GUICtrlCreateListView("Spalte 1|Spalte 2|Spalte 3|Spalte 4", 2, 2, 394, 268)
	_GUICtrlListView_SetExtendedListViewStyle($idListView, $LVS_EX_HEADERDRAGDROP)
	_GUICtrlListView_SetColumnWidth($idListView, 0, 100)
	_GUICtrlListView_SetColumnWidth($idListView, 1, 100)
	_GUICtrlListView_SetColumnWidth($idListView, 2, 100)
	_GUICtrlListView_SetColumnWidth($idListView, 3, 100)
	GUISetState(@SW_SHOW)

	_GUICtrlListView_SetColumnOrderArray($idListView, $a_Order)

	$a_Order = _GUICtrlListView_GetColumnOrderArray($idListView)
	MsgBox($MB_SYSTEMMODAL, "Information", StringFormat("Spaltenreihenfolge: [%d, %d, %d, %d]", $a_Order[1], $a_Order[2], $a_Order[3], $a_Order[4]))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
