#include <MsgBoxConstants.au3>
#include <WinAPIIcons.au3>

MsgBox($MB_SYSTEMMODAL, "_WinAPI_ExtractIconEx", "Anzahl der Icons in der Datei shell32.dll: " & _WinAPI_ExtractIconEx("shell32.dll", -1, 0, 0, 0))
