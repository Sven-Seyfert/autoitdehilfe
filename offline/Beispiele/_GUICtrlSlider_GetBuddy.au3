#include <GUIConstantsEx.au3>
#include <GuiSlider.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $idInput, $idInput2, $idSlider

	; Erstellt eine GUI
	GUICreate("Slider: Ermittelt das Handle zu einem Buddy ", 400, 296)
	$idSlider = GUICtrlCreateSlider(95, 2, 205, 20, BitOR($TBS_TOOLTIPS, $TBS_AUTOTICKS, $TBS_ENABLESELRANGE))
	$idInput = GUICtrlCreateInput("0", 2, 25, 90, 20)
	$idInput2 = GUICtrlCreateInput("0", 2, 25, 90, 20)
	GUISetState(@SW_SHOW)

	; Setzt das Handle zu einem Buddy (links))
	_GUICtrlSlider_SetBuddy($idSlider, True, $idInput)
	; Setzt das Handle zu einem Buddy (rechts)
	_GUICtrlSlider_SetBuddy($idSlider, False, $idInput2)

	; Ermittelt das Handle zu einem Buddy (links))
	MsgBox($MB_SYSTEMMODAL, "Information", "Buddy Handle: " & _GUICtrlSlider_GetBuddy($idSlider, True))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
