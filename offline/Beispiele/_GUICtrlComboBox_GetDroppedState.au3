#include <GuiComboBox.au3>
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Global $g_idMemo

Example()

Func Example()
	Local $idCombo

	; Erstellt eine GUI
	GUICreate("ComboBox: Ermittelt, ob die Liste aufgeklappt ist", 400, 296)
	$idCombo = GUICtrlCreateCombo("", 2, 2, 396, 296)
	$g_idMemo = GUICtrlCreateEdit("", 2, 32, 396, 262, 0)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Fügt Dateien hinzu
	_GUICtrlComboBox_BeginUpdate($idCombo)
	_GUICtrlComboBox_AddDir($idCombo, @WindowsDir & "\*.exe")
	_GUICtrlComboBox_EndUpdate($idCombo)

	; Ermittelt, ob die ListBox der ComboBox aufgeklappt ist
	MemoWrite("ListBox der ComboBox aufgeklappt?......: " & _GUICtrlComboBox_GetDroppedState($idCombo))

	Sleep(500)

	; Zeigt die ListBox der ComboBox
	_GUICtrlComboBox_ShowDropDown($idCombo, True)

	Sleep(500)

	; Ermittelt, ob die ListBox der ComboBox aufgeklappt ist
	MemoWrite("ListBox der ComboBox aufgeklappt?......: " & _GUICtrlComboBox_GetDroppedState($idCombo))

	Sleep(500)

	; Versteckt die ListBox der ComboBox
	_GUICtrlComboBox_ShowDropDown($idCombo)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example

; Gibt eine Zeile im Memo-Fenster aus
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
