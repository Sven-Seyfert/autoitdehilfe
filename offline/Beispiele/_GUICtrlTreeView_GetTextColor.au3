#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiTreeView.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>

Example()

Func Example()
	GUICreate("TreeView: Setzt und ermittelt die Textfarbe (v" & @AutoItVersion & ")", 500, 300)

	Local $iStyle = BitOR($TVS_EDITLABELS, $TVS_HASBUTTONS, $TVS_HASLINES, $TVS_LINESATROOT, $TVS_DISABLEDRAGDROP, $TVS_SHOWSELALWAYS, $TVS_CHECKBOXES)
	Local $idTreeView = GUICtrlCreateTreeView(2, 2, 396, 268, $iStyle, $WS_EX_CLIENTEDGE)
	GUISetState(@SW_SHOW)

	_GUICtrlTreeView_SetBkColor($idTreeView, $COLOR_Turquoise)
	_GUICtrlTreeView_SetTextColor($idTreeView, $COLOR_Crimson)
	_GUICtrlTreeView_SetLineColor($idTreeView, $COLOR_WHITE)

	Local $hImage = _GUIImageList_Create(16, 16, 5, 3)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 110)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 131)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 165)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 168)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 137)
	_GUIImageList_AddIcon($hImage, "shell32.dll", 146)
	_GUICtrlTreeView_SetNormalImageList($idTreeView, $hImage)

	_GUICtrlTreeView_BeginUpdate($idTreeView)
	For $x = 0 To _GUIImageList_GetImageCount($hImage) - 1
		_GUICtrlTreeView_Add($idTreeView, 0, StringFormat("[%02d] Neues Item", $x), $x, $x)
	Next
	_GUICtrlTreeView_EndUpdate($idTreeView)

	MsgBox($MB_SYSTEMMODAL, "Information", "Hintergrundfarbe: " & _GUICtrlTreeView_GetBkColor($idTreeView) & @CRLF & _
			"Textfarber: " & _GUICtrlTreeView_GetTextColor($idTreeView) & @CRLF & _
			"Zeilenfarbe: " & _GUICtrlTreeView_GetLineColor($idTreeView))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
