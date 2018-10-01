pause
@echo off
setlocal enabledelayedexpansion
:checkupdate
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (echo check1) else (goto nopowershell)
powershell.exe (new-object System.Net.WebClient).DownloadFile( 'https://raw.githubusercontent.com/SNSLogty/style2paints-offline/master/ver.md’,’macaron\version.txt')
for /f "tokens=1-3 delims=|" %%i in (macaron\version.txt) do (
set BL4=%%i
)
if %vernum% lss !BL4! (goto update) else (echo 当前已是最新版本)
pause
:nopowershell
echo 你没有powershell?
timeout /t 5
goto main
