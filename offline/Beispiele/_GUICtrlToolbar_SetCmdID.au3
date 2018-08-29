#include <GUIConstantsEx.au3>
#include <GuiToolbar.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIConstants.au3>
#include <WindowsConstants.au3>


Example()

Func Example()
	Local $hGui, $hToolbar, $aStrings[4]
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $idHelp, $idPrint

	; Erstellt eine GUI
	$hGui = GUICreate("Toolbar", 400, 300)
	$hToolbar = _GUICtrlToolbar_Create($hGui)
	GUISetState(@SW_SHOW)

	_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_LARGE_COLOR)

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

	; Ändert den Speichern-Button in den Druck-Button
	MsgBox($MB_SYSTEMMODAL, "Information", 'Ändert den "Speichern-Button" zu "Drucken-Button"')
	_GUICtrlToolbar_SetCmdID($hToolbar, 2, $idPrint)
	_GUICtrlToolbar_SetButtonBitMap($hToolbar, $idPrint, $STD_PRINT)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example
