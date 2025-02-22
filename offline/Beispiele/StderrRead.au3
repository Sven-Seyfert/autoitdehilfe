#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	Local $iPID = Run(@ComSpec & " /c DIR Example.au3", @SystemDir, @SW_HIDE, BitOR($STDERR_CHILD, $STDOUT_CHILD))
	Local $sOutput = ""
	While 1
		$sOutput &= StdoutRead($iPID)
		If @error Then ; Beendet die Schleife falls der Prozess beendet wurde oder StdoutRead einen Fehler zurückgibt.
			ExitLoop
		EndIf
		MsgBox($MB_SYSTEMMODAL, "Stdout Read:", $sOutput)
	WEnd

	$sOutput = ''
	While 1
		$sOutput &= StderrRead($iPID)
		If @error Then ; Beendet die Schleife falls der Prozess beendet wurde oder StderrRead einen Fehler zurückgibt.
			ExitLoop
		EndIf
		MsgBox($MB_SYSTEMMODAL, "Stderr Read:", $sOutput)
	WEnd
EndFunc   ;==>Example
