#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiTreeView.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>

Example()

Func Example()
	Local $g_hImage, $idTreeView
	Local $iStyle = BitOR($TVS_EDITLABELS, $TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS, $TVS_CHECKBOXES)

	GUICreate("TreeView: Setzt die Einrückung", 400, 300)

	$idTreeView = GUICtrlCreateTreeView(2, 2, 396, 268, $iStyle, $WS_EX_CLIENTEDGE)
	GUISetState(@SW_SHOW)

	$g_hImage = _GUIImageList_Create(16, 16, 5, 3)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 110)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 131)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 165)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 168)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 137)
	_GUIImageList_AddIcon($g_hImage, "shell32.dll", 146)
	_GUICtrlTreeView_SetNormalImageList($idTreeView, $g_hImage)

	_GUICtrlTreeView_BeginUpdate($idTreeView)
	For $x = 0 To _GUIImageList_GetImageCount($g_hImage) - 1
		_GUICtrlTreeView_Add($idTreeView, 0, StringFormat("[%02d] Neues Item", $x + 1), $x, $x)
	Next
	_GUICtrlTreeView_EndUpdate($idTreeView)

	MsgBox($MB_SYSTEMMODAL, "Information", "Einrückung: " & _GUICtrlTreeView_GetIndent($idTreeView))

	_GUICtrlTreeView_SetIndent($idTreeView, 25)

	MsgBox($MB_SYSTEMMODAL, "Information", "Einrückung: " & _GUICtrlTreeView_GetIndent($idTreeView))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
