#include <GUIConstantsEx.au3>
#include <GuiMenu.au3>

Example()

Func Example()
	Local $hGui, $hFile, $idEdit, $hHelp, $hMain
	Local Enum $e_idNew = 1000, $e_idOpen, $e_idSave, $e_idExit, $e_idCut, $e_idCopy, $e_idPaste, $e_idAbout

	; Erstellt eine GUI
	$hGui = GUICreate("Menu", 400, 300)

	; Erstellt den Menüpunkt Datei
	$hFile = _GUICtrlMenu_CreateMenu()
	_GUICtrlMenu_InsertMenuItem($hFile, 0, "&Neu", $e_idNew)
	_GUICtrlMenu_InsertMenuItem($hFile, 1, "&Öffnen", $e_idOpen)
	_GUICtrlMenu_InsertMenuItem($hFile, 2, "&Speichern", $e_idSave)
	_GUICtrlMenu_InsertMenuItem($hFile, 3, "", 0)
	_GUICtrlMenu_InsertMenuItem($hFile, 4, "&Beenden", $e_idExit)

	; Erstellt den Menüpunkt "Bearbeiten"
	$idEdit = _GUICtrlMenu_CreateMenu()
	_GUICtrlMenu_InsertMenuItem($idEdit, 0, "&Ausschneiden", $e_idCut)
	_GUICtrlMenu_InsertMenuItem($idEdit, 1, "K&opieren", $e_idCopy)
	_GUICtrlMenu_InsertMenuItem($idEdit, 2, "&Einfügen", $e_idPaste)

	; Erstellt den Menüpunkt Hilfe
	$hHelp = _GUICtrlMenu_CreateMenu()

	; Erstellt das Hauptmenü
	$hMain = _GUICtrlMenu_CreateMenu()
	_GUICtrlMenu_InsertMenuItem($hMain, 0, "&Datei", 0, $hFile)
	_GUICtrlMenu_InsertMenuItem($hMain, 1, "&Bearbeiten", 0, $idEdit)
	_GUICtrlMenu_InsertMenuItem($hMain, 2, "&Hilfe", 0, $hHelp)

	; Setzt das neue Menü
	_GUICtrlMenu_SetMenu($hGui, $hMain)
	GUISetState(@SW_SHOW)

	; Ergänzt den Menüpunkt Über
	_GUICtrlMenu_AppendMenu($hHelp, $MF_STRING, $e_idAbout, "&Über")

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example
