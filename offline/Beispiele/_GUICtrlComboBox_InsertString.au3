#include <GUIComboBox.au3>
#include <GuiConstantsEx.au3>

Example()

Func Example()
	Local $idCombo

	; Erstellt eine GUI
	GUICreate("ComboBox: String einfügen", 400, 296)
	$idCombo = GUICtrlCreateCombo("", 2, 2, 396, 296)
	GUISetState(@SW_SHOW)

	; Fügt Dateien hinzu
	_GUICtrlComboBox_BeginUpdate($idCombo)
	_GUICtrlComboBox_AddDir($idCombo, @WindowsDir & "\*.exe")
	_GUICtrlComboBox_EndUpdate($idCombo)

	; String einfügen
	_GUICtrlComboBox_InsertString($idCombo, "Ein eingefügter String", 0)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
