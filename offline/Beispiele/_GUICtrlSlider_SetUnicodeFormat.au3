#include <GUIConstantsEx.au3>
#include <GuiSlider.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $idSlider

	; Erstellt eine GUI
	GUICreate("Slider: Setzt das Unicode Format", 400, 296)
	$idSlider = GUICtrlCreateSlider(2, 2, 396, 20, BitOR($TBS_TOOLTIPS, $TBS_AUTOTICKS, $TBS_ENABLESELRANGE))
	GUISetState(@SW_SHOW)

	; Ermittelt das Unicode Format
	MsgBox($MB_SYSTEMMODAL, "Information", "Unicode Format: " & _GUICtrlSlider_GetUnicodeFormat($idSlider))

	; Setzt Unicode Format
	MsgBox($MB_SYSTEMMODAL, "Information", "Vorheriges Unicode Format: " & _GUICtrlSlider_SetUnicodeFormat($idSlider, False))

	; Ermittelt das Unicode Format
	MsgBox($MB_SYSTEMMODAL, "Information", "Unicode Format: " & _GUICtrlSlider_GetUnicodeFormat($idSlider))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
