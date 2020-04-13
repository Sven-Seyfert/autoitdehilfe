#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>

Example()

Func Example()
	Local $idListview, $hImage, $iRandom
	Local $iStylesEx = BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_SUBITEMIMAGES)

	GUICreate("ImageList: Bilderanzahl ermitteln", 400, 300)
	$idListview = GUICtrlCreateListView("", 2, 2, 394, 268, BitOR($LVS_SHOWSELALWAYS, $LVS_NOSORTHEADER, $LVS_REPORT))
	_GUICtrlListView_SetExtendedListViewStyle($idListview, $iStylesEx)
	GUISetState(@SW_SHOW)

	; Lädt die Bilder
	$hImage = _GUIImageList_Create(16, 16, 5, 3)
	$iRandom = Random(6, 20, 1)
	For $x = 1 To $iRandom
		_GUIImageList_AddIcon($hImage, @SystemDir & "\shell32.dll", $x)
	Next
	_GUICtrlListView_SetImageList($idListview, $hImage, 1)

	; Fügt die Spalten hinzu
	_GUICtrlListView_AddColumn($idListview, "Spalte 1", 120)
	_GUICtrlListView_AddColumn($idListview, "Spalte 2", 100)
	_GUICtrlListView_AddColumn($idListview, "Spalte 3", 100)

	; Fügt die Items hinzu
	_GUICtrlListView_AddItem($idListview, "Zeile 1: Spalte 1", 0)
	_GUICtrlListView_AddSubItem($idListview, 0, "Zeile 1: Spalte 2", 1, 1)
	_GUICtrlListView_AddSubItem($idListview, 0, "Zeile 1: Spalte 3", 2, 2)
	_GUICtrlListView_AddItem($idListview, "Zeile 2: Spalte 1", 1)
	_GUICtrlListView_AddSubItem($idListview, 1, "Zeile 2: Spalte 2", 1, 2)
	_GUICtrlListView_AddItem($idListview, "Zeile 3: Spalte 1", 2)
	_GUICtrlListView_AddItem($idListview, "Zeile 4: Spalte 1", 3)
	_GUICtrlListView_AddItem($idListview, "Zeile 5: Spalte 1", 4)
	_GUICtrlListView_AddSubItem($idListview, 4, "Zeile 5: Spalte 2", 1, 3)
	_GUICtrlListView_AddItem($idListview, "Zeile 6: Spalte 1", 5)
	_GUICtrlListView_AddSubItem($idListview, 5, "Zeile 6: Spalte 2", 1, 4)
	_GUICtrlListView_AddSubItem($idListview, 5, "Zeile 6: Spalte 3", 2, 3)

	MsgBox($MB_SYSTEMMODAL, "Information", "Bilderanzahl: " & _GUIImageList_GetImageCount($hImage))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
