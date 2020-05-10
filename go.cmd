@echo off
::go.cmd

set loc=%1

2>NUL CALL :%loc%
exit /b

:term
start "" "C:\Program Files\ConEmu\ConEmu64.exe" /run {Shells::PowerShell}
exit /b

:aterm
start "" "C:\Program Files\ConEmu\ConEmu64.exe" /run {Shells::PowerShell (Admin)}
exit /b

:blah
exit /b