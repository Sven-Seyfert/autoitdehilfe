#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIHObj.au3>
#include <WinAPIProc.au3>

If Not @Compiled Then
	MsgBox($MB_SYSTEMMODAL, '', 'Um dieses Skript zu starten, muss es zuerst kompiliert und dann die exe-Datei gestartet werden.')
	Exit
EndIf

Local $hSemaphore = _WinAPI_CreateSemaphore('MySemaphore', 2, 2)

_WinAPI_WaitForSingleObject($hSemaphore)
_MyGUI()
_WinAPI_ReleaseSemaphore($hSemaphore)
_WinAPI_CloseHandle($hSemaphore)

Func _MyGUI()
	GUICreate('Test ' & StringReplace(@ScriptName, '.au3', '()'))
	GUISetState(@SW_SHOW)
	While 1
		Switch GUIGetMsg()
			Case $GUI_EVENT_CLOSE
				ExitLoop
		EndSwitch
	WEnd
EndFunc   ;==>_MyGUI
