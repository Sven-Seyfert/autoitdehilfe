#include <MsgBoxConstants.au3>
#include <SQLite.au3>
#include <SQLite.dll.au3>

Local $hFile, $vData, $sFileName, $sData, $hQuery, $aRow, $sMsg

ConsoleWrite("_SQLite_Startup=" & _SQLite_Startup() & @CRLF)
ConsoleWrite("_SQLite_LibVersion=" & _SQLite_LibVersion() & @CRLF)

_SQLite_Open()
_SQLite_Exec(-1, "CREATE TABLE IF NOT EXISTS Test (Daten blob);")

$vData = Binary("Hallo" & Chr(0) & "Welt"); = 48616C6C6F0057656C74
$sData = _SQLite_FastEncode($vData)
_SQLite_Exec(-1, "INSERT INTO Test VALUES (" & $sData & ");")

$vData = Binary(Chr(0) & @CRLF); = 000D0A
$sData = _SQLite_FastEncode($vData)
_SQLite_Exec(-1, "INSERT INTO Test VALUES (" & $sData & ");")

$vData = Binary(Chr(0)); = 00
$sData = _SQLite_FastEncode($vData)

_SQLite_Exec(-1, "INSERT INTO Test VALUES ( " & $sData & " );")
_SQLite_Query(-1, "SELECT * FROM Test;", $hQuery)

While _SQLite_FetchData($hQuery, $aRow, 1) = $SQLITE_OK
	$sMsg &= Hex($aRow[0]) & @CRLF
WEnd

MsgBox($MB_SYSTEMMODAL, "Ergebnis", $sMsg)

_SQLite_Close()
_SQLite_Shutdown()
