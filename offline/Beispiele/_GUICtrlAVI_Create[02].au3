; == Beispiel 2 : Erstellt mit einer UDF

#include <Extras\WM_NOTIFY.au3>
#include <GuiAVI.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Global $g_hAVI

_Beispiel2()

Func _Beispiel2()
	Local $hGui

	; Erstellt eine GUI
	$hGui = GUICreate("AVI Erstellen (v" & @AutoItVersion & ")", 300, 100)
	$g_hAVI = _GUICtrlAVI_Create($hGui, @SystemDir & "\Shell32.dll", 150, 10, 10)
	GUISetState(@SW_SHOW)

	GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")

	; Spielt das AutoIt Beispiel-AVI ab
	_GUICtrlAVI_Play($g_hAVI)

	; Die Schleife wiederholt sich, bis der Benutzer eine Beenden-Aktion auslöst
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	; Schließt AVI-Clip und GUI
	_GUICtrlAVI_Close($g_hAVI)

	GUIDelete()
EndFunc   ;==>_Beispiel2

Func WM_COMMAND($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg
	Local $hWndFrom = $lParam
	Local $iIDFrom = BitAND($wParam, 0xFFFF) ; Low Word
	Local $iCode = BitShift($wParam, 16) ; Hi Word

	Switch $hWndFrom
		Case $g_hAVI
			Switch $iCode
				Case $ACN_START ; Benachrichtigt das Parent-Fenster eines AnimationsControls, dass der verknüpfte AVI-Clip gestartet wurde
					_WM_NOTIFY_DebugInfo("$ACN_START", "hWndFrom,IDFrom", $hWndFrom, $iIDFrom)
					; Kein Rückgabewert
				Case $ACN_STOP ; Benachrichtigt das Parent Fenster eines AnimationsControls, dass der verknüpfte AVI-Clip gestoppt wurde
					_WM_NOTIFY_DebugInfo("$ACN_STOP", "hWndFrom,IDFrom", $hWndFrom, $iIDFrom)
					; Kein Rückgabewert
			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_COMMAND
