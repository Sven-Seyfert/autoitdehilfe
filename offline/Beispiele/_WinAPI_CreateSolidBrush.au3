;==============================================================================
;    _WinAPI_CreateSolidBrush.au3
;==============================================================================

#include <WindowsConstants.au3>
#include <GuiConstantsEx.au3>
#include <ButtonConstants.au3>
#include <Constants.au3>
#include <WinAPI.au3>

Opt("MustDeclareVars", 1)

Global Enum $IDC_RED = 100, $IDC_GREEN, $IDC_BLUE

Global $aButton[3][2] = [["Rot", $IDC_RED],["Grün", $IDC_GREEN],["Blau", $IDC_BLUE]]

Global $hInstance

Global $nColor = 0x0000FFFF ; Gelb (BGR)

;==============================================================================
Exit (Example())
;==============================================================================

Func Example()
	Local $hwndMain, $hwndButton, $nWidth, $x

	$hInstance = _WinAPI_GetModuleHandle(0)

	; Das Hauptfenster erzeugen
	$hwndMain = GUICreate( _
			"_WinAPI_CreateWindowEx - Demo", _	; Titel des Fensters
			400, 300, -1, -1, _					; Größe und Position des Fensters
			BitOR($WS_OVERLAPPEDWINDOW, _		; Fensterstile
				$WS_CLIPCHILDREN), _
			$WS_EX_WINDOWEDGE, _				; Erweiterte Fensterstile
			0)									; Handle des Parent-Fensters

	$nWidth = _WinAPI_GetWindowWidth($hwndMain)
	$x = ($nWidth / 7)

	For $i = 0 To 2
		; Drei einfache Schaltflächen erzeugen
		$hwndButton = _WinAPI_CreateWindowEx( _
				0, _							; Erweiterte Fensterstile
				"BUTTON", _						; Name der Fensterklasse
				$aButton[$i][0], _				; Text/Titel des Fensters
				BitOR($WS_TABSTOP, $WS_CHILD, _	; Fensterstile
				$WS_VISIBLE, $BS_CENTER), _
				$x, 220, ($nWidth / 7), 25, _	; Position und Größe des Fensters
				$hwndMain, _					; Handle des Parent-Fensters
				$aButton[$i][1], _				; Identifizierer des (Kind-)Fensters
				$hInstance, _					; Instanzhandle des Moduls
				0)								; Anwendungsdefinierter Wert

		$x += 2 * ($nWidth / 7)
	Next

	; Fensternachrichten registrieren
	GUIRegisterMsg($WM_COMMAND, "MyWM_COMMAND")
	GUIRegisterMsg($WM_ERASEBKGND, "MyWM_ERASEBKGND")

	; Das Hauptfenster anzeigen
	_WinAPI_ShowWindow($hwndMain, @SW_SHOW)

	While (True)
		Switch (GUIGetMsg())
			Case $GUI_EVENT_CLOSE
				ExitLoop
		EndSwitch
	WEnd
EndFunc   ;==>Example

Func MyWM_COMMAND($hwnd, $iMsg, $wParam, $lParam)

	Switch (_WinAPI_LoWord($wParam))
		Case $IDC_RED
			; Farbwert (BGR) in globale Variable ablegen
			$nColor = 0x000000FF
			; Neuzeichnen des Fensters erzwingen
			_WinAPI_InvalidateRect($hwnd, 0, True)
			_WinAPI_UpdateWindow($hwnd)

		Case $IDC_GREEN
			; Farbwert (BGR) in globale Variable ablegen
			$nColor = 0x0000FF00
			; Neuzeichnen des Fensters erzwingen
			_WinAPI_InvalidateRect($hwnd, 0, True)
			_WinAPI_UpdateWindow($hwnd)

		Case $IDC_BLUE
			; Farbwert (BGR) in globale Variable ablegen
			$nColor = 0x00FF0000
			; Neuzeichnen des Fensters erzwingen
			_WinAPI_InvalidateRect($hwnd, 0, True)
			_WinAPI_UpdateWindow($hwnd)
	EndSwitch

	Return $GUI_RUNDEFMSG
EndFunc   ;==>MyWM_COMMAND

Func MyWM_ERASEBKGND($hwnd, $iMsg, $wParam, $lParam)
	#forceref $iMsg, $lParam

	Local $hDC = $wParam, $hBrush, $hBrushOld, $rcClient

	; Anwendungsbereich ermitteln
	$rcClient = _WinAPI_GetClientRect($hwnd)

	; Füllmuster erzeugen
	$hBrush = _WinAPI_CreateSolidBrush($nColor)

	; Füllmuster in den Gerätekontext einsetzen
	$hBrushOld = _WinAPI_SelectObject($hDC, $hBrush)

	; Anwendungsbereich mit dem Füllmuster zeichnen
	_WinAPI_FillRect($hDC, DllStructGetPtr($rcClient), $hBrush)

	; Das ursprügliche Füllmuster wieder in den Gerätekontext einsetzen
	_WinAPI_SelectObject($hDC, $hBrushOld)

	; Unser selbsterzeugtes Füllmuster wieder
	; löschen, wenn wir es nicht mehr brauchen
	_WinAPI_DeleteObject($hBrush)

	Return 1
EndFunc   ;==>MyWM_ERASEBKGND

;================================ End of File =================================