#include <Math.au3>
#include <MsgBoxConstants.au3>

Local $fRadians = 3.14159265358979
Local $fDegrees = _Degree($fRadians)

MsgBox($MB_SYSTEMMODAL, "Umrechnung: Radiant in Grad", $fRadians & " rad = " & $fDegrees & "°")
