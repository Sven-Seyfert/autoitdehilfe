#include <GuiConstantsEx.au3>
#include <GuiMonthCal.au3>
#include <WindowsConstants.au3>

Global $g_idMemo

Example()

Func Example()
	; Erstellt eine GUI
	GUICreate("Month Calendar: Setzt und ermittelt Heute (v" & @AutoItVersion & ")", 450, 300)
	Local $idMonthCal = GUICtrlCreateMonthCal("", 4, 4, -1, -1, $WS_BORDER, 0x00000000)

	; Erstellt ein Memo Control
	$g_idMemo = GUICtrlCreateEdit("", 4, 168, 392, 128, 0)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Heute ermitteln bzw. setzen
	_GUICtrlMonthCal_SetToday($idMonthCal, @YEAR, 8, 19)
	Local $tToday = _GUICtrlMonthCal_GetToday($idMonthCal)
	MemoWrite("Today: " & StringFormat("%02d/%02d/%04d", DllStructGetData($tToday, "Month"), _
			DllStructGetData($tToday, "Day"), _
			DllStructGetData($tToday, "Year")))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example

; Schreibt eine Nachricht in das Memo
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
