#include <GUIConstantsEx.au3>
#include <GuiSlider.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $idSlider

	; Erstellt eine GUI
	GUICreate("Slider: Setzt die Anzahl logischer Positionen", 550, 296)
	$idSlider = GUICtrlCreateSlider(2, 2, 546, 20, BitOR($TBS_TOOLTIPS, $TBS_AUTOTICKS, $TBS_ENABLESELRANGE))
	GUISetState(@SW_SHOW)

	; Ermittelt die Anzahl von logischen Position, die der Slider abfahren kann
	MsgBox(8256, "Information", "Abschnittsgröße: " & _GUICtrlSlider_GetPageSize($idSlider))

	; Setzt die Anzahl von logischen Position, die der Slider abfahren kann
	_GUICtrlSlider_SetPageSize($idSlider, 4)

	; Ermittelt die Anzahl von logischen Position, die der Slider abfahren kann
	MsgBox(8256, "Information", "Logische Positionen: " & _GUICtrlSlider_GetPageSize($idSlider))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
