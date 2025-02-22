#include <SQLite.au3>
#include <SQLite.dll.au3>

Local $hQuery, $aRow, $aNames
_SQLite_Startup()
ConsoleWrite("_SQLite_LibVersion=" & _SQLite_LibVersion() & @CRLF)
_SQLite_Open() ; Öffnet eine DB im Speicher (:memory: database)
_SQLite_Exec(-1, "CREATE TABLE aTest (a,b,c);")
_SQLite_Exec(-1, "INSERT INTO aTest(a,b,c) VALUES ('c','2','Welt!');")
_SQLite_Exec(-1, "INSERT INTO aTest(a,b,c) VALUES ('b','3',' ');")
_SQLite_Exec(-1, "INSERT INTO aTest(a,b,c) VALUES ('a','1','Hallo');")
_SQLite_Query(-1, "SELECT ROWID,* FROM aTest ORDER BY a;", $hQuery)
_SQLite_FetchNames($hQuery, $aNames) ; Auslesen der Spaltenüberschriften
ConsoleWrite(StringFormat(" %-10s  %-10s  %-10s  %-10s ", $aNames[0], $aNames[1], $aNames[2], $aNames[3]) & @CRLF)
While _SQLite_FetchData($hQuery, $aRow) = $SQLITE_OK ; Auslesen der nächsten Zeile
	ConsoleWrite(StringFormat(" %-10s  %-10s  %-10s  %-10s ", $aRow[0], $aRow[1], $aRow[2], $aRow[3]) & @CRLF)
WEnd
_SQLite_Exec(-1, "DROP TABLE aTest;")
_SQLite_Close()
_SQLite_Shutdown()

; Ausgabe:
;
; rowid       A           B           C
; 3           a           1           Hallo
; 2           b           3
; 1           c           2           Welt!
