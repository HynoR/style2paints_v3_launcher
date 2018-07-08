@echo off
title style2paints_launcher
mode con cols=50 lines=26
:check
if exist server\server.py (echo f1/6) else (goto err1)
if exist server\baby.net (echo f2/6) else (goto err1)
if exist server\tail.net (echo f3/6) else (goto err1)
if exist server\girder.net (echo f4/6) else (goto err1)
if exist server\neck.net (echo f5/6) else (goto err1)
if exist server\head.net (echo f6/6) else (goto err1)
rem check files
cls
goto first1
:first1
if exist macaron\macaron.ini (goto main) else (goto makese)
:first2
rd /s /q temps
del .gitignore
del README.md
del .gitattributes
md macaron
echo FirstRun=False >> macaron\macaron.ini
if exist server.bat (goto main) else (goto err2)
goto main
:main
cls
echo Thanks to Google Translate :p
echo ----------------------------------------------
echo style2paints version:3.0   Current mode:CPU
echo style2paints launcher version:macaron_0.11beta
echo ----------------------------------------------
echo Start the server first,then open the interface
echo Do not close it the service window while using
echo ----------------------------------------------
echo Please press the corresponding number(1/2/3/4/5/6)
echo 1.Start the server
echo 2.open the interface
echo 3.How to color
echo 4.Style2paints-Github
echo 5.Feedback about the starter
echo 6.close
choice /c 123456 /n 
if %errorlevel%==1 (goto cho1)
if %errorlevel%==2 (goto cho2)
if %errorlevel%==3 (goto help)
if %errorlevel%==4 (goto about)
if %errorlevel%==5 (goto bugme)
if %errorlevel%==6 (exit)
:cho1
start server.bat
goto main
:cho2
start http://127.0.0.1:8000
goto main
:help
start https://github.com/lllyasviel/style2paints/blob/master/README.md
goto main
:about
start https://github.com/lllyasviel/style2paints
goto main
:download
start https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
goto err1
:bugme
start https://github.com/SNSLogty/style2paints-offline/issues
goto main
:makese
del server.bat
echo @echo off >>server.cache
echo title style2paints_v3_server >>server.cache
echo echo Please wait... >>server.cache
echo timeout /t 3 >>server.cache
echo cls >>server.cache
echo echo Start initialization,it takes about 1 minute >>server.cache
echo echo please wait.Do not close this window >>server.cache
echo echo It will be ready when you see these words >>server.cache
echo echo --------------------------------- >>server.cache
echo echo Listening on http://0.0.0.0:8000/ >>server.cache
echo echo Hit Ctrl-C to quit. >>server.cache
echo echo ---------------------------------- >>server.cache
echo echo LOG: >>server.cache
echo echo on >>server.cache
echo cd server >>server.cache
echo ..\python\python.exe server.py >>server.cache
echo @echo off >>server.cache
echo echo Running abnormally or the service is stopped... >>server.cache
echo pause>nul >>server.cache
echo exit >>server.cache
rename server.cache server.bat
cls
goto first2
:err1
mode con cols=70 lines=20
echo You don't have a full file or the launcher is misplaced!
echo Please put the launcher in the style2paints directory!
echo Input q Open the download link
echo.
echo Download the full files of paintstransfer
echo LINK：https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
echo Password：2333
set /p inputword1=
if "%inputword1%" == "q" (goto download) else cls
exit
:err2
cls
goto makese
