#include <GuiConstantsEx.au3>
#include <GuiMonthCal.au3>
#include <WindowsConstants.au3>

Global $g_idMemo

Example()

Func Example()
	Local $idMonthCal

	; Erstellt eine GUI
	GUICreate("MonthCal: Ermittelt die Datumsinformationen für das Datum im Stringformat, welches als 'heute' definiert ist", 850, 300)
	$idMonthCal = GUICtrlCreateMonthCal("", 4, 4, -1, -1, $WS_BORDER, 0x00000000)

	; Erstellt ein Memo Control
	$g_idMemo = GUICtrlCreateEdit("", 4, 168, 392, 128, 0)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Ermittelt die Datumsinformationen für das Datum im Stringformat, welches als 'heute' definiert ist
	MemoWrite("Heute: " & _GUICtrlMonthCal_GetTodayStr($idMonthCal))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example

; Schreibt eine Nachricht in das Memo
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
