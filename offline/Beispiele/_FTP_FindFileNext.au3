#include <FTPEx.au3>

;~ Local $aFile = _FTP_FindFileFirst($hConn, "/pub/papers/graphics/research/", $h_Handle)
Local $aFile = _FTP_FindFileFirst($hConn, "/", $h_Handle)
Local $sUsername = ''
Local $sPass = ''

Local $hOpen = _FTP_Open('MyFTP Control')
Local $hConn = _FTP_Connect($hOpen, $sServer, $sUsername, $sPass)

Local $h_Handle
;~ Local $aFile = _FTP_FindFileFirst($hConn, "/pub/papers/graphics/research/", $h_Handle)
Local $aFile = _FTP_FindFileFirst($hConn, "/", $h_Handle)
ConsoleWrite('$sFileName = ' & $aFile[10] & ' Attribute = ' & $aFile[1] & '  -> Fehlercode: ' & @error & @CRLF)

$aFile = _FTP_FindFileNext($h_Handle)
ConsoleWrite('$sFileNameNext1 = ' & $aFile[10] & ' Attribute = ' & $aFile[1] & '  -> Fehlercode: ' & @error & @CRLF)

$aFile = _FTP_FindFileNext($h_Handle)
ConsoleWrite('$sFileNameNext2 = ' & $aFile[10] & ' Attribute = ' & $aFile[1] & '  -> Fehlercode: ' & @error & @CRLF)

$aFile = _FTP_FindFileNext($h_Handle)
ConsoleWrite('$sFileNameNext3 = ' & $aFile[10] & ' Attribute = ' & $aFile[1] & '  -> Fehlercode: ' & @error & @CRLF)

Local $iFindClose = _FTP_FindFileClose($h_Handle)

Local $iFtpc = _FTP_Close($hConn)
Local $iFtpo = _FTP_Close($hOpen)
