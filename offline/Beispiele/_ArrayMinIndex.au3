#include <Array.au3>
#include <MsgBoxConstants.au3>

Local $aArray = StringSplit("4,2,06,8,12,5", ",")

MsgBox($MB_SYSTEMMODAL, 'Index des minimalen String Wertes', _ArrayMinIndex($aArray, 0, 1))
MsgBox($MB_SYSTEMMODAL, 'Index des minimalen numerischer String Wertes', _ArrayMinIndex($aArray, 1, 1))

Local $aArray[4][4]
For $i = 0 To 3
	For $j = 0 To 3
		$aArray[$i][$j] = Random(0, 99, 1)
	Next
Next
_ArrayDisplay($aArray, "2D Array")
MsgBox($MB_SYSTEMMODAL, 'Index des minimalen numerischer String Wertes in Spalte 2', _ArrayMinIndex($aArray, 1, 0, 0, 2))