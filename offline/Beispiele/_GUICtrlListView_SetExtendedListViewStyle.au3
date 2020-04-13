#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>

Example()

Func Example()
	Local $hImage, $idListView

	; Erstellt eine GUI
	GUICreate("ListView: Setzt einen erweiterten Stil", 400, 300)
	$idListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	_GUICtrlListView_SetExtendedListViewStyle($idListView, BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_SUBITEMIMAGES))
	GUISetState(@SW_SHOW)

	; Lädt die Bilder
	$hImage = _GUIImageList_Create()
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($idListView, 0xFF0000, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($idListView, 0x00FF00, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap($idListView, 0x0000FF, 16, 16))
	_GUICtrlListView_SetImageList($idListView, $hImage, 1)

	; Fügt die Spalten hinzu
	_GUICtrlListView_InsertColumn($idListView, 0, "Spalte 1", 100)
	_GUICtrlListView_InsertColumn($idListView, 1, "Spalte 2", 100)
	_GUICtrlListView_InsertColumn($idListView, 2, "Spalte 3", 100)

	; Fügt die Items hinzu
	_GUICtrlListView_AddItem($idListView, "Zeile 1: Spalte 1", 0)
	_GUICtrlListView_AddSubItem($idListView, 0, "Zeile 1: Spalte 2", 1, 1)
	_GUICtrlListView_AddSubItem($idListView, 0, "Zeile 1: Spalte 3", 2, 2)
	_GUICtrlListView_AddItem($idListView, "Zeile 2: Spalte 1", 1)
	_GUICtrlListView_AddSubItem($idListView, 1, "Zeile 2: Spalte 2", 1, 2)
	_GUICtrlListView_AddItem($idListView, "Zeile 3: Spalte 1", 2)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
