#include <GUIConstantsEx.au3>
#include <GuiHeader.au3>
#include <GuiImageList.au3>
#include <WinAPIGdi.au3>

Global $g_idMemo

Example()

Func Example()
	Local $hGui, $hHeader, $hImage

	; Erstellt eine GUI
	$hGui = GUICreate("Header", 400, 300)
	$hHeader = _GUICtrlHeader_Create($hGui)
	_GUICtrlHeader_SetUnicodeFormat($hHeader, True)
	$g_idMemo = GUICtrlCreateEdit("", 2, 24, 396, 274, 0)
	GUICtrlSetFont($g_idMemo, 9, 400, 0, "Courier New")
	GUISetState(@SW_SHOW)

	; Erstellt eine Imagelist mit Bildern
	$hImage = _GUIImageList_Create(11, 11)
	_GUIImageList_Add($hImage, _WinAPI_CreateSolidBitmap($hGui, 0xFF0000, 11, 11))
	_GUIImageList_Add($hImage, _WinAPI_CreateSolidBitmap($hGui, 0x00FF00, 11, 11))
	_GUIImageList_Add($hImage, _WinAPI_CreateSolidBitmap($hGui, 0x0000FF, 11, 11))
	_GUICtrlHeader_SetImageList($hHeader, $hImage)

	; Fügt die Spalten hinzu
	_GUICtrlHeader_AddItem($hHeader, "Spalte 0", 100, 0, 0)
	_GUICtrlHeader_AddItem($hHeader, "Spalte 1", 100, 0, 1)
	_GUICtrlHeader_AddItem($hHeader, "Spalte 2", 100, 0, 2)
	_GUICtrlHeader_AddItem($hHeader, "Spalte 3", 100)

	; Zeigt das Bild von Spalte 0
	MemoWrite("Bild von Spalte 0: " & _GUICtrlHeader_GetItemImage($hHeader, 0))

	Sleep(1000)

	; Setzt das Bild von Spalte 0
	_GUICtrlHeader_SetItemImage($hHeader, 0, 2)

	; Zeigt das Bild von Spalte 0
	MemoWrite("Bild von Spalte 0: " & _GUICtrlHeader_GetItemImage($hHeader, 0))

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
EndFunc   ;==>Example

; Gibt eine Zeile im Memo-Fenster aus
Func MemoWrite($sMessage)
	GUICtrlSetData($g_idMemo, $sMessage & @CRLF, 1)
EndFunc   ;==>MemoWrite
