#include <GUIConstantsEx.au3>
#include <GuiToolbar.au3>
#include <WinAPIConstants.au3>
#include <WindowsConstants.au3>

Global $g_idMemo

Example()

Func Example()
	; Erstellt eine GUI
	Local $hGUI = GUICreate("Toolbar: Setzt und ermittelt Informationen über den Status eines festgelegten Buttons (v" & @AutoItVersion & ")", 700, 300)
	Local $hToolbar = _GUICtrlToolbar_Create($hGUI)
	$g_idMemo = GUICtrlCreateEdit("", 2, 36, 396, 262, $WS_VSCROLL)
	GUICtrlSetFont($g_idMemo, 10, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Fügt die Standard Systembitmaps hinzu
	Switch _GUICtrlToolbar_GetBitmapFlags($hToolbar)
		Case 0
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_SMALL_COLOR)
		Case 2
			_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_LARGE_COLOR)
	EndSwitch

	; Fügt die Buttons hinzu
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $idHelp
	_GUICtrlToolbar_AddButton($hToolbar, $e_idNew, $STD_FILENEW)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idOpen, $STD_FILEOPEN)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idSave, $STD_FILESAVE)
	_GUICtrlToolbar_AddButtonSep($hToolbar)
	_GUICtrlToolbar_AddButton($hToolbar, $idHelp, $STD_HELP)

	; Zeigt den Status des Speichern-Buttons
	MemoWrite("Status des Speichern-Buttons: " & _GUICtrlToolbar_GetButtonState($hToolbar, $e_idSave))

	Sleep(1000)

	; Setzt den Status des Speichern-Buttons
	Local $bBalloon = _GUICtrlToolbar_SetButtonState($hToolbar, $e_idSave, BitOR($TBSTATE_ENABLED, $TBSTATE_PRESSED))
	MemoWrite("Setzt den Status des Buttons: " & $bBalloon)

	; Zeigt den Status des Speichern-Buttons
	MemoWrite("Status des Speichern-Buttons: " & _GUICtrlToolbar_GetButtonState($hToolbar, $e_idSave))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example

; Schreibt eine Nachricht in das Memo
Func MemoWrite($sMessage = "")
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
