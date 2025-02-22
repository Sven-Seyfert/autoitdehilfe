#include <GuiMenu.au3>

Example()

Func Example()
	Local $hWnd, $hMain, $hFile, $tRECT, $tPoint, $iX, $iY, $iIndex

	; Startet den Editor
	Run("notepad.exe")
	WinWaitActive("[CLASS:Notepad]")
	$hWnd = WinGetHandle("[CLASS:Notepad]")
	$hMain = _GUICtrlMenu_GetMenu($hWnd)
	$hFile = _GUICtrlMenu_GetItemSubMenu($hMain, 0)

	; Menüpunkt 'Öffnen'
	Send("!f")
	Sleep(1000)

	; Bewegt die Maus über den Menüpunkt 'Öffnen'
	$tRECT = _GUICtrlMenu_GetItemRectEx($hWnd, $hFile, 1)
	$tPoint = _Lib_PointFromRect($tRECT, True)
	_Lib_GetXYFromPoint($tPoint, $iX, $iY)
	MouseMove($iX, $iY, 1)
	Sleep(1000)

	; Ermittelt den Menüpunkt über der sich die Maus gerade befindet
	$iIndex = _GUICtrlMenu_MenuItemFromPoint($hWnd, $hFile)
	Send("{ESC 2}")
	Writeln("Der Menüpunkt über der sich die Maus gerade befindet lautet: " & $iIndex)
EndFunc   ;==>Example

; Schreibt eine Zeile mit Text in den Editor
Func Writeln($sText)
	ControlSend("[CLASS:Notepad]", "", "Edit1", $sText & @CRLF)
EndFunc   ;==>Writeln

Func _Lib_PointFromRect(ByRef $tRECT, $fCenter = True)
	Local $iX1, $iY1, $iX2, $iY2, $tPoint

	$iX1 = DllStructGetData($tRECT, "Left")
	$iY1 = DllStructGetData($tRECT, "Top")
	$iX2 = DllStructGetData($tRECT, "Right")
	$iY2 = DllStructGetData($tRECT, "Bottom")
	If $fCenter Then
		$iX1 = $iX1 + (($iX2 - $iX1) / 2)
		$iY1 = $iY1 + (($iY2 - $iY1) / 2)
	EndIf
	$tPoint = DllStructCreate($tagPOINT)
	DllStructSetData($tPoint, "X", $iX1)
	DllStructSetData($tPoint, "Y", $iY1)
	Return $tPoint
EndFunc   ;==>_Lib_PointFromRect

Func _Lib_GetXYFromPoint(ByRef $tPoint, ByRef $iX, ByRef $iY)
	$iX = DllStructGetData($tPoint, "X")
	$iY = DllStructGetData($tPoint, "Y")
EndFunc   ;==>_Lib_GetXYFromPoint
