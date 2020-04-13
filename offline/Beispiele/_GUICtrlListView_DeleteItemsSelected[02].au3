#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>

Example_UDF_Created()

Func Example_UDF_Created()
	Local $aItems[10][3]

	Local $hGUI = GUICreate("ListView: Löscht die ausgewählten Items (UDF)", 400, 300)
	Local $hListView = _GUICtrlListView_Create($hGUI, "Spalte1|Spalte2|Spalte3", 2, 2, 394, 268, BitOR($LVS_SHOWSELALWAYS, $LVS_NOSORTHEADER, $LVS_REPORT))
	_GUICtrlListView_SetExtendedListViewStyle($idListView, BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT))
	GUISetState(@SW_SHOW)

	; 3 Spalten laden
	For $iI = 0 To UBound($aItems) - 1
		$aItems[$iI][0] = "Item " & $iI
		$aItems[$iI][1] = "Item " & $iI & "-1"
		$aItems[$iI][2] = "Item " & $iI & "-2"
	Next

	_GUICtrlListView_AddArray($idListView, $aItems)

	MsgBox($MB_SYSTEMMODAL, "Ausgewählt", "Es sind ein oder mehrere Items auszuwählen" & @CRLF & "Dann 'OK' drücken")

	; Verwendet das Handle eines mit der UDF erstellen ListViews
	_GUICtrlListView_DeleteItemsSelected($idListView)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	; Löscht die GUI und alle Controls
	GUIDelete()
EndFunc   ;==>Example_UDF_Created
