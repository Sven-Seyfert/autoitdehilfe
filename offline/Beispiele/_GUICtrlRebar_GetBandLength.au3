#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <GuiEdit.au3>
#include <GuiReBar.au3>
#include <GuiToolbar.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIConstants.au3>
#include <WindowsConstants.au3>

Global $g_idMemo

Example()

Func Example()
	Local $hGui, $idBtnExit, $hReBar, $hToolbar, $hCombo, $idInput
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $idHelp

	$hGui = GUICreate("Rebar", 400, 396, -1, -1, BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU, $WS_MAXIMIZEBOX))

	; Erstellt ein Rebar-Control
;~ 	$hReBar = _GUICtrlReBar_Create($hGui, BitOR($CCS_TOP, $WS_BORDER, $RBS_VARHEIGHT, $RBS_AUTOSIZE, $RBS_BANDBORDERS))
	$hReBar = _GUICtrlRebar_Create($hGui, BitOR($CCS_TOP, $WS_BORDER, $RBS_VARHEIGHT, $RBS_BANDBORDERS))

	$g_idMemo = GUICtrlCreateEdit("", 2, 100, 396, 250, $WS_VSCROLL)
	GUICtrlSetFont($g_idMemo, 10, 400, 0, "Courier New")

	; Erstellt eine Combobox in der Rebar
	$hCombo = _GUICtrlComboBox_Create($hGui, "", 0, 0, 90, 120)
	_GUICtrlComboBox_BeginUpdate($hCombo)
	_GUICtrlComboBox_AddDir($hCombo, @WindowsDir & "\*.exe")
	_GUICtrlComboBox_EndUpdate($hCombo)

	; Erstellt eine Toolbar in der Rebar
	$hToolbar = _GUICtrlToolbar_Create($hGui, BitOR($TBSTYLE_FLAT, $CCS_NORESIZE, $CCS_NOPARENTALIGN))

	; Fügt die Standard Systembitmaps hinzu
	Switch _GUICtrlToolbar_GetBitmapFlags($hToolbar)
		Case 0
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_SMALL_COLOR)
		Case 2
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_LARGE_COLOR)
	EndSwitch

	; Fügt die Buttons hinzu
	_GUICtrlToolbar_AddButton($hToolbar, $e_idNew, $STD_FILENEW)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idOpen, $STD_FILEOPEN)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idSave, $STD_FILESAVE)
	_GUICtrlToolbar_AddButtonSep($hToolbar)
	_GUICtrlToolbar_AddButton($hToolbar, $idHelp, $STD_HELP)

	; Erstellt eine Inputbox in der Rebar
	$idInput = GUICtrlCreateInput("Input-Control", 0, 0, 90, 20)

	; Fügt eine Gruppe mit dem Control am Anfang der Rebar hinzu
	_GUICtrlRebar_AddToolBarBand($hReBar, $hToolbar)

	; Fügt eine Gruppe mit dem Control hinzu
	_GUICtrlRebar_AddBand($hReBar, $hCombo, 100, 120, "Dir *.exe:")

	; Fügt eine Gruppe mit dem Control hinzu
	_GUICtrlRebar_AddBand($hReBar, GUICtrlGetHandle($idInput), 100, 100, "Name:")

	_GUICtrlRebar_SetBandBackColor($hReBar, 1, Int(0x00008B))
	_GUICtrlRebar_SetBandForeColor($hReBar, 1, Int(0xFFFFFF))

	GUISetState(@SW_SHOW)

	For $x = 0 To _GUICtrlRebar_GetBandCount($hReBar) - 1
		MemoWrite("Index der Gruppe " & $x & @TAB & "Länge: " & _GUICtrlRebar_GetBandLength($hReBar, $x))
	Next

	MemoWrite("============================================")

	MsgBox($MB_SYSTEMMODAL, "Information", "Setzt die Breite der Gruppe")

	_GUICtrlRebar_SetBandLength($hReBar, 0, 200)

	For $x = 0 To _GUICtrlRebar_GetBandCount($hReBar) - 1
		MemoWrite("Index der Gruppe " & $x & @TAB & "Länge: " & _GUICtrlRebar_GetBandLength($hReBar, $x))
	Next

	$idBtnExit = GUICtrlCreateButton("Beenden", 150, 360, 100, 25)
	GUICtrlSetState($idBtnExit, $GUI_DEFBUTTON)
	GUICtrlSetState($idBtnExit, $GUI_FOCUS)

	While 1
		Switch GUIGetMsg()
			Case $GUI_EVENT_CLOSE, $idBtnExit
				Exit
		EndSwitch
	WEnd
EndFunc   ;==>Example

; Schreibt eine Nachricht in das Memo
Func MemoWrite($sMessage = "")
	_GUICtrlEdit_AppendText($g_idMemo, $sMessage & @CRLF)
EndFunc   ;==>MemoWrite
