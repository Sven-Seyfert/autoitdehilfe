#include <GUIConstantsEx.au3>
#include <GuiToolbar.au3>
#include <WinAPIConstants.au3>
#include <WindowsConstants.au3>

Global $g_idMemo

Example()

Func Example()
	Local $hGui, $hToolbar, $aStrings[4]
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $idHelp

	; Erstellt eine GUI
	$hGui = GUICreate("Toolbar", 400, 300)
	$hToolbar = _GUICtrlToolbar_Create($hGui)
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

	; Fügt Strings hinzu
	$aStrings[0] = _GUICtrlToolbar_AddString($hToolbar, "&Neu Button")
	$aStrings[1] = _GUICtrlToolbar_AddString($hToolbar, "&Öffnen Button")
	$aStrings[2] = _GUICtrlToolbar_AddString($hToolbar, "&Speichern Button")
	$aStrings[3] = _GUICtrlToolbar_AddString($hToolbar, "&Hilfe Button")

	; Fügt die Buttons hinzu
	_GUICtrlToolbar_AddButton($hToolbar, $e_idNew, $STD_FILENEW, $aStrings[0])
	_GUICtrlToolbar_AddButton($hToolbar, $e_idOpen, $STD_FILEOPEN, $aStrings[1])
	_GUICtrlToolbar_AddButton($hToolbar, $e_idSave, $STD_FILESAVE, $aStrings[2])
	_GUICtrlToolbar_AddButtonSep($hToolbar)
	_GUICtrlToolbar_AddButton($hToolbar, $idHelp, $STD_HELP, $aStrings[3])

	; Setzt den hervorheben-Status für den Speichern Button
	MemoWrite("Setzt den hervorheben-Status für den Speichern Button: " & _GUICtrlToolbar_IsButtonHighlighted($hToolbar, $e_idSave))
	_GUICtrlToolbar_HighlightButton($hToolbar, $e_idSave)
	MemoWrite("Status des Speichern Button: " & _GUICtrlToolbar_IsButtonHighlighted($hToolbar, $e_idSave))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example

; Schreibt eine Nachricht in das Memo
Func MemoWrite($sMessage = "")
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
