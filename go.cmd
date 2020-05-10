@echo off
:: go.cmd
:: modify labels, put this file rin your path
:: run from run dialog (win+r)
:: go <label>
:: go term
:: go aterm
:: go gh


set loc=%1

2>NUL CALL :%loc%
goto exit

:gh
start brave --new-window "https://github.com/smaug9?tab=repositories"
goto exit

:term
start "" "C:\Program Files\ConEmu\ConEmu64.exe" /run {Shells::PowerShell}
goto exit

:aterm
start "" "C:\Program Files\ConEmu\ConEmu64.exe" /run {Shells::PowerShell (Admin)}
goto exit

:exit
exit /b