#include <GUIConstantsEx.au3>

Global $g_idX = 0, $g_idY = 0

Example()

Func Example()
	HotKeySet("{ESC}", "GetPos")

	GUICreate("Esc drücken um die Position zu erhalten", 400, 400)
	$g_idX = GUICtrlCreateLabel("0", 10, 10, 50)
	$g_idY = GUICtrlCreateLabel("0", 10, 30, 50)
	GUISetState(@SW_SHOW)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	While 1
		Switch GUIGetMsg()
			Case $GUI_EVENT_CLOSE
				ExitLoop

		EndSwitch
	WEnd

	GUIDelete()
EndFunc   ;==>Example

Func GetPos()
	Local $a = GUIGetCursorInfo()
	GUICtrlSetData($g_idX, $a[0])
	GUICtrlSetData($g_idY, $a[1])
EndFunc   ;==>GetPos
