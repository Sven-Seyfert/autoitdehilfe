#include <GUIConstantsEx.au3>
#include <GuiTab.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	; Erstellt eine GUI
	GUICreate("Tab-Control: Ermittelt das Rechteck mit RectEx (v" & @AutoItVersion & ")", 500, 300)
	Local $idTab = GUICtrlCreateTab(2, 2, 396, 296)
	GUISetState(@SW_SHOW)

	; Fügt Tabs hinzu
	_GUICtrlTab_InsertItem($idTab, 0, "Tab 1")
	_GUICtrlTab_InsertItem($idTab, 1, "Tab 2")
	_GUICtrlTab_InsertItem($idTab, 2, "Tab 3")

	; Ermittelt das Rechteck
	Local $tRECT = _GUICtrlTab_GetDisplayRectEx(GUICtrlGetHandle($idTab))
	Local $sRect = StringFormat("[%d, %d, %d, %d]", DllStructGetData($tRECT, "Left"), _
			DllStructGetData($tRECT, "Top"), _
			DllStructGetData($tRECT, "Right"), _
			DllStructGetData($tRECT, "Bottom"))
	MsgBox($MB_SYSTEMMODAL, "Information", "Rechteck: " & $sRect)

	; Die Schleife wiederholt sich, bis der Benutzer die Beenden-Aktion der GUI auslöst.
	Do
	Until GUIGetMsg() = $GUI_EVENT_CLOSE
	GUIDelete()
EndFunc   ;==>Example
