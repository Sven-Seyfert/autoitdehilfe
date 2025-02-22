#include <MsgBoxConstants.au3>
#include <StringConstants.au3>
#include <TrayConstants.au3> ; wird für die $TRAY_ICONSTATE_SHOW Konstante benötigt.

#NoTrayIcon

Opt("TrayMenuMode", 3) ; Die Standard Traymenüeinträge (Skript pausieren/beenden) werden nicht angezeigt und die Items werden nicht angehakt wenn diese ausgewählt werden. Verwendet wurden die Optionen 1 und 2 für TrayMenuMode.

Example()

Func Example()
	Local $idGetState = TrayCreateItem("Ermittelt den 'Über' Status")
	TrayCreateItem("") ; Erzeugt einen Trennstrich.

	Local $idAbout = TrayCreateItem("Über")
	TrayCreateItem("") ; Erzeugt einen Trennstrich.

	Local $idExit = TrayCreateItem("Exit")

	TraySetState($TRAY_ICONSTATE_SHOW) ; Zeigt das Traymenü.

	While 1
		Switch TrayGetMsg()
			Case $idAbout ; Zeigt ein Nachrichtenfenster mit der AutoIt Version und dem Installationspfad der AutoIt Startdatei.
				MsgBox($MB_SYSTEMMODAL, "", "AutoIt Traymenü Beispiel." & @CRLF & @CRLF & _
						"Version: " & @AutoItVersion & @CRLF & _
						"Installationspfad: " & StringLeft(@AutoItExe, StringInStr(@AutoItExe, "\", $STR_NOCASESENSEBASIC, -1) - 1)) ; Ermittelt den Ordner eines kompletten Pfads.

			Case $idGetState
				; Zeigt ein Nachrichtenfenster über den Status des 'Über' Items.
				MsgBox($MB_SYSTEMMODAL, "", "Der Status des 'Über' Items lautet: " & TrayItemGetState($idAbout))

			Case $idExit ; Beendet die Schleife.
				ExitLoop
		EndSwitch
	WEnd
EndFunc   ;==>Example
