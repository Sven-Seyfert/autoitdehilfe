#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiTreeView.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>

Global $g_hImage, $g_hStateImage

Example()

Func Example()
	Local $ahItem[10], $aidChildItem[30], $iYItem = 0, $iRand, $idTreeView
	Local $iStyle = BitOR($TVS_EDITLABELS, $TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS)

	GUICreate("TreeView: Ist es das erste Item?", 400, 300)

	$idTreeView = GUICtrlCreateTreeView(2, 2, 396, 268, $iStyle, $WS_EX_CLIENTEDGE)
	GUISetState(@SW_SHOW)

	_CreateNormalImageList()
	_GUICtrlTreeView_SetNormalImageList($idTreeView, $g_hImage)

	_CreateStateImageList()
	_GUICtrlTreeView_SetStateImageList($idTreeView, $g_hStateImage)

	_GUICtrlTreeView_BeginUpdate($idTreeView)
	For $x = 0 To 9
		$ahItem[$x] = _GUICtrlTreeView_Add($idTreeView, 0, StringFormat("[%02d] Neues Item", $x), 4, 5)
		_GUICtrlTreeView_SetStateImageIndex($idTreeView, $ahItem[$x], 1)
		For $y = 1 To 3
			$aidChildItem[$iYItem] = _GUICtrlTreeView_AddChild($idTreeView, $ahItem[$x], StringFormat("[%02d] Neues Child", $iYItem), 0, 3)
			_GUICtrlTreeView_SetStateImageIndex($idTreeView, $aidChildItem[$iYItem], 1)
			$iYItem += 1
		Next
	Next
	_GUICtrlTreeView_EndUpdate($idTreeView)

	$iRand = Random(0, 9, 1)
	MsgBox($MB_SYSTEMMODAL, "Information", StringFormat("Ist der Index %d das erste Item? %s", $iRand, _GUICtrlTreeView_IsFirstItem($idTreeView, $ahItem[$iRand])))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example

Func _CreateNormalImageList()
	$g_hImage = _GUIImageList_Create(16, 16, 5, 3)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 110)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 131)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 165)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 168)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 137)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 146)
EndFunc   ;==>_CreateNormalImageList

Func _CreateStateImageList()
	$g_hStateImage = _GUIImageList_Create(16, 16, 5, 3)
	_GUIImageList_AddIcon($g_hStateImage, "shell32.dll", 3)
	_GUIImageList_AddIcon($g_hStateImage, "shell32.dll", 4)
EndFunc   ;==>_CreateStateImageList
