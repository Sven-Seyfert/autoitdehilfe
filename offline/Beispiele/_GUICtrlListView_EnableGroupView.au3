#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>

Example()

Func Example()
	Local $hImage, $idListView

	GUICreate("ListView: Items als Gruppe anzeigen", 500, 300)
	$idListView = GUICtrlCreateListView("", 2, 2, 394, 268)
	GUISetState(@SW_SHOW)

	; Lädt die Bilder
	$hImage = _GUIImageList_Create()
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap(GUICtrlGetHandle($idListView), 0xFF0000, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap(GUICtrlGetHandle($idListView), 0x00FF00, 16, 16))
	_GUIImageList_Add($hImage, _GUICtrlListView_CreateSolidBitMap(GUICtrlGetHandle($idListView), 0x0000FF, 16, 16))
	_GUICtrlListView_SetImageList($idListView, $hImage, 1)

	; Fügt die Spalten hinzu
	_GUICtrlListView_InsertColumn($idListView, 0, "Spalte 1", 100)
	_GUICtrlListView_InsertColumn($idListView, 1, "Spalte 2", 100)
	_GUICtrlListView_InsertColumn($idListView, 2, "Spalte 3", 100)

	; Fügt die Items hinzu
	_GUICtrlListView_AddItem($idListView, "Zeile 1: Spalte 1", 0)
	_GUICtrlListView_AddSubItem($idListView, 0, "Zeile 1: Spalte 2", 1)
	_GUICtrlListView_AddSubItem($idListView, 0, "Zeile 1: Spalte 3", 2)
	_GUICtrlListView_AddItem($idListView, "Zeile 2: Spalte 1", 1)
	_GUICtrlListView_AddSubItem($idListView, 1, "Zeile 2: Spalte 2", 1)
	_GUICtrlListView_AddItem($idListView, "Zeile 3: Spalte 1", 2)

	; Gruppen erstellen
	_GUICtrlListView_EnableGroupView($idListView)
	_GUICtrlListView_InsertGroup($idListView, -1, 1, "Gruppe 1")
	_GUICtrlListView_InsertGroup($idListView, -1, 2, "Gruppe 2")
	_GUICtrlListView_SetItemGroupID($idListView, 0, 1)
	_GUICtrlListView_SetItemGroupID($idListView, 1, 2)
	_GUICtrlListView_SetItemGroupID($idListView, 2, 2)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
