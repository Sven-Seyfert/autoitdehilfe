#include <GUIConstantsEx.au3>
#include <GuiSlider.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	; Erstellt eine GUI
	GUICreate("Slider: Setzt und ermittelt die Endposition (v" & @AutoItVersion & ")", 500, 296)
	Local $idSlider = GUICtrlCreateSlider(2, 2, 396, 20, BitOR($TBS_TOOLTIPS, $TBS_AUTOTICKS, $TBS_ENABLESELRANGE))
	GUISetState(@SW_SHOW)

	; Setzt die Endposition
	_GUICtrlSlider_SetSelEnd($idSlider, 50)

	; Ermittelt die Endposition
	MsgBox($MB_SYSTEMMODAL, "Information", "Ermittelt die Endposition: " & _GUICtrlSlider_GetSelEnd($idSlider))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
