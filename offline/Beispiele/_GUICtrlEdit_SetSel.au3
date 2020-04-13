#include <GUIConstantsEx.au3>
#include <GuiEdit.au3>
#include <GuiStatusBar.au3>
#include <WindowsConstants.au3>

Example()

Func Example()
	Local $hStatusBar, $idEdit, $hGui
	Local $sWow64 = ""
	If @AutoItX64 Then $sWow64 = "\Wow6432Node"
	Local $sFile = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE" & $sWow64 & "\AutoIt v3\AutoIt", "InstallDir") & "\include\changelog.txt"
	Local $aPartRightSide[3] = [190, 378, -1], $aSel

	; Erstellt eine GUI
	$hGui = GUICreate("Edit: Wählt einen Bereich von Zeichen aus", 400, 300)
	$idEdit = GUICtrlCreateEdit("", 2, 2, 394, 268, BitOR($ES_WANTRETURN, $WS_VSCROLL))
	$hStatusBar = _GUICtrlStatusBar_Create($hGui, $aPartRightSide)
	_GUICtrlStatusBar_SetIcon($hStatusBar, 2, 97, "shell32.dll")
	GUISetState(@SW_SHOW)

	; Setzt die Ränder
	_GUICtrlEdit_SetMargins($idEdit, BitOR($EC_LEFTMARGIN, $EC_RIGHTMARGIN), 10, 10)

	; Setzt den Text
	_GUICtrlEdit_SetText($idEdit, FileRead($sFile))

	; Wählt einen Bereich von Zeichen aus
	_GUICtrlEdit_SetSel($idEdit, 15, 20)

	; Ermittelt die Position des Startzeichens und des Endzeichens der aktuellen Markierung
	$aSel = _GUICtrlEdit_GetSel($idEdit)
	_GUICtrlStatusBar_SetText($hStatusBar, "Start: " & $aSel[0])
	_GUICtrlStatusBar_SetText($hStatusBar, "Ende: " & $aSel[1], 1)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
