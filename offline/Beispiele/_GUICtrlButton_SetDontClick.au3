#include <GuiButton.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Global $g_hBtn, $g_idMemo, $g_hBtn2

; Es ist zu beachten, dass die Control-ID dieses Buttons NICHT mit GuiCtrlRead gelesen werden kann!
; Funktioniert erst ab Windows Vista!!!

Example()

Func Example()
	Local $hGui

	$hGui = GUICreate("Buttons", 400, 400)
	$g_idMemo = GUICtrlCreateEdit("", 10, 100, 390, 284, $WS_VSCROLL)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")

	$g_hBtn = _GUICtrlButton_Create($hGui, "Button 1", 10, 10, 160, 40)
	_GUICtrlButton_SetDontClick($g_hBtn, True)

	$g_hBtn2 = _GUICtrlButton_Create($hGui, "Button 2", 10, 55, 160, 40)

	GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")

	GUISetState(@SW_SHOW)

	While 1
		Switch GUIGetMsg()
			Case $GUI_EVENT_CLOSE
				ExitLoop
		EndSwitch
	WEnd

	Exit
EndFunc   ;==>Example


; Gibt eine Zeile im Memo-Fenster aus
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite

; Reagiert auf einen Buttonklick
; Bei Klick auf Button 1 muss '$BST_DONTCLICK' erscheinen!
Func WM_COMMAND($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg
	Local $nNotifyCode = BitShift($wParam, 16)
	Local $nID = BitAND($wParam, 0x0000FFFF)
	Local $hCtrl = $lParam
	Local $sText = ""

	Switch $hCtrl
		Case $g_hBtn, $g_hBtn2
			Switch $nNotifyCode
				Case $BN_CLICKED
					If BitAND(_GUICtrlButton_GetState($hCtrl), $BST_DONTCLICK) = $BST_DONTCLICK Then
						$sText = "$BST_DONTCLICK" & @CRLF
					Else
						$sText = "$BN_CLICKED" & @CRLF
					EndIf
					MemoWrite($sText & _
							"-----------------------------" & @CRLF & _
							"WM_COMMAND - Infos:" & @CRLF & _
							"-----------------------------" & @CRLF & _
							"Code" & @TAB & ":" & $nNotifyCode & @CRLF & _
							"CtrlID" & @TAB & ":" & $nID & @CRLF & _
							"CtrlHWnd:" & $hCtrl & @CRLF & _
							_GUICtrlButton_GetText($hCtrl) & @CRLF)
				Case $BN_PAINT
					$sText = "$BN_PAINT" & @CRLF
				Case $BN_PUSHED, $BN_HILITE
					$sText = "$BN_PUSHED, $BN_HILITE" & @CRLF
				Case $BN_UNPUSHED, $BN_UNHILITE
					$sText = "$BN_UNPUSHED" & @CRLF
				Case $BN_DISABLE
					$sText = "$BN_DISABLE" & @CRLF
				Case $BN_DBLCLK, $BN_DOUBLECLICKED
					$sText = "$BN_DBLCLK, $BN_DOUBLECLICKED" & @CRLF
				Case $BN_SETFOCUS
					$sText = "$BN_SETFOCUS" & @CRLF
				Case $BN_KILLFOCUS
					$sText = "$BN_KILLFOCUS" & @CRLF
			EndSwitch
			Return 0 ; Nur das Klicken auf den Button wird verarbeitet!
	EndSwitch
	Return $GUI_RUNDEFMSG ; Standard-Nachrichtenbehandlung ausführen
EndFunc   ;==>WM_COMMAND
