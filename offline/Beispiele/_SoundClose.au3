#include <MsgBoxConstants.au3>
#include <Sound.au3>

Local $sound = _SoundOpen(@WindowsDir & "\media\Windows XP Startup.wav")
If @error = 2 Then
	MsgBox($MB_SYSTEMMODAL, "Fehler", "Die Datei existiert nicht.")
	Exit
ElseIf @extended <> 0 Then
	Local $iExtended = @extended ; Zuweisung, weil @extended nach DllStructCreate() geändert wird
	Local $stText = DllStructCreate("char[128]")
	DllCall("winmm.dll", "short", "mciGetErrorStringA", "str", $iExtended, "struct*", $tText, "int", 128)
	MsgBox($MB_SYSTEMMODAL, "Fehler", "Öffnen fehlgeschlagen." & @CRLF & "Fehlernummer: " & $iExtended & @CRLF & "Fehlerbeschreibung: " & DllStructGetData($stText, 1) & @CRLF & "Beachte: Möglicherweise kann der Sound dennoch korrekt abgespielt werden.")
Else
	MsgBox($MB_SYSTEMMODAL, "Erfolgsmeldung", "Die Datei wurde erfolgreich geöffnet.")
EndIf

If _SoundClose($sound) = 1 Then
	MsgBox($MB_SYSTEMMODAL, "Erfolgsmeldung", "Die Sound-Datei wurde erfolgreich geschlossen.")
Else
	MsgBox($MB_SYSTEMMODAL, "Fehler", "Das Schließen der Datei war nicht erfolgreich.")
EndIf
