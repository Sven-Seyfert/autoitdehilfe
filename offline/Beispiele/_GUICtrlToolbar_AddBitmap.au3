#include <GUIConstantsEx.au3>
#include <GuiToolbar.au3>
#include <WinAPIConstants.au3>
#include <WindowsConstants.au3>


Example()

Func Example()
	; Erstellt eine GUI
	Local $hGUI = GUICreate("Toolbar_ Bitmap hinzufügen (v" & @AutoItVersion & ")", 400, 300)
	Local $hToolbar = _GUICtrlToolbar_Create($hGUI)
	GUISetState(@SW_SHOW)

	; Setzt das ANSI Format
;~     _GUICtrlToolbar_SetUnicodeFormat($hToolbar, False)

	; Fügt die Standard Systembitmaps hinzu
	_GUICtrlToolbar_AddBitmap($hToolbar, 1, -1, $IDB_STD_LARGE_COLOR)

	; Fügt die Buttons hinzu
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $idHelp
	_GUICtrlToolbar_AddButton($hToolbar, $e_idNew, $STD_FILENEW)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idOpen, $STD_FILEOPEN)
	_GUICtrlToolbar_AddButton($hToolbar, $e_idSave, $STD_FILESAVE)
	_GUICtrlToolbar_AddButtonSep($hToolbar)
	_GUICtrlToolbar_AddButton($hToolbar, $idHelp, $STD_HELP)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example
