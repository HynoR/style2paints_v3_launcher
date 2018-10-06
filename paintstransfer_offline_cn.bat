::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN45eZnS2buAbukQ5SU=
::YAwzuBVtJxjWCl3EqQJhSA==
::ZR4luwNxJguZRRmX4Fs8LUlETQ2MKHja
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4sbJbX3+aeIekd/laqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0A
setlocal enabledelayedexpansion
set versionw=0.21
set versionnum=22
title style2paints_macaron version %versionw%BETA
:choicecheck
if exist %windir%\System32\choice.exe (goto checkupdate)  else (goto err3)
::啊啊啊啊啊批处理麻烦死了我为什么要写这鬼东西自虐by snslogty
:check
cd %~dp0
::防止路径错误
if exist server\server.py (echo f1/6) else (goto err1)
if exist server\baby.net (echo f2/6) else (goto err1)
if exist server\tail.net (echo f3/6) else (goto err1)
if exist server\girder.net (echo f4/6) else (goto err1)
if exist server\neck.net (echo f5/6) else (goto err1)
if exist server\head.net (echo f6/6) else (goto err1)
rem check files
cls
goto firstruncheck
:firstruncheck
cls
if exist macaron\s2p.ini (goto main) else (goto first1)
:first1
md macaron
echo FirstRun>>macaron\s2p.ini
echo a1>>macaron\s2p.ini
if exist 开始.bat (del 开始.bat) else (echo check1)
goto main
:checkupdate
if exist %windir%\System32\WindowsPowerShell\v1.0\powershell.exe (echo 检查更新中，按1跳过) else (goto nopowershell)
choice /c 12 /n /t 3 /d 2
if %errorlevel%==1 (goto check)
if %errorlevel%==2 (echo 检测中)
del vers.txt
powershell.exe (new-object System.Net.WebClient).DownloadFile( 'https://raw.githubusercontent.com/SNSLogty/style2paints-offline/master/ver.md’,’vers.txt')
for /f "tokens=1-3 delims=," %%i in (vers.txt) do (
set BL4=%%i
 )
echo !BL4!
if !versionnum! LSS !BL4! (goto wantup) else (echo 0)
cls
goto check
:wantup
echo 启动器有更新，是否更新?5秒钟后跳转更新界面,按1跳过
choice /c 12 /n /t 5 /d 2
if %errorlevel%==1 (goto check)
if %errorlevel%==2 (goto goupdate)
:goupdate
START https://github.com/SNSLogty/style2paints-offline/releases/tag/!BL4!
goto check
:nopowershell
echo 你没有powershell?
timeout /t 5
goto main
::设置结束
:main
rem 启动器by交流群内的所有大佬
cls
ECHO.::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.::                                                                          ::
ECHO.::      style2paints离线包版本:3.0     模式:CPU                             ::
ECHO.::      style2paints启动器版本:%versionw%BETA                                     ::
ECHO.::      转载请不要删除本信息。请勿用于商业用途！                            :: 
ECHO.::      先启动服务，启动成功后再打开界面                                    ::
ECHO.::      使用时请勿关闭服务窗口                                              ::
ECHO.::      交流QQ群:879417437                                                  ::
ECHO.::                                                                          ::
ECHO.::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::        1       ::         2        ::       3        ::       4          ::
echo ::    启动服务    ::     打开界面     ::      关于      ::      关闭        ::
echo ::                ::                  ::                ::                  ::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo 本程序仅限64位系统使用，启动前请确认已安装全版本VC++运行库
echo beta测试补丁:加快服务打开速度并自动打开界面,按5下载
echo 请按下相应数字
choice /c 12345 /n 
if %errorlevel%==1 (goto makese)
if %errorlevel%==2 (goto cho2)
if %errorlevel%==3 (goto help)
if %errorlevel%==4 (exit)
if %errorlevel%==5 (goto betas)
::程序部分开始
:betas
powershell.exe (new-object System.Net.WebClient).DownloadFile( 'https://download.elifulkerson.com//files/tcping/0.39/tcping.exe’,’tcping.exe')
echo @echo off>>beta.bat
echo :pins>>beta.bat
echo cls >>beta.bat
echo echo 检测中>>beta.bat
timeout /t 3>>beta.bat
echo tcping.exe 127.0.0.1 8000>>beta.bat
echo if errorlevel 1 (>>beta.bat
echo  goto pins>>beta.bat
::1失败 
echo ) else (>>beta.bat
echo   goto runs>>beta.bat
echo )>>beta.bat
echo :runs>>beta.bat
echo cls>>beta.bat
echo echo 服务已启动>>beta.bat
echo start http://127.0.0.1:8000>>beta.bat
echo timeout /t 20>>beta.bat
echo exit>>beta.txt
goto main
:cho1
cls
echo 检测RAM中...按2可跳过(不推荐)
choice /c 12 /n /t 3 /d 1
if %errorlevel%==1 (echo ------------------------)
if %errorlevel%==2 (goto runserver)
cls
for /f "usebackq tokens=2" %%i in (`systeminfo ^|findstr "可用的物理内存"`) do  @set/p=%%i^|<nul >>tmp.txt
timeout /t 1 >nul
for /f "tokens=1-3 delims=|" %%i in (tmp.txt) do (
set BL1=%%i
echo !BL1!>>tmp2.txt )
for /f "tokens=1-3 delims=," %%i in (tmp2.txt) do (
set BL2=%%i
set BL3=%%j
set /a rams=BL2*1000
set /a rams2=rams+BL3
if !BL2! gtr 100 (set rams2=!BL2!)
 echo 当前内存 !rams2! MB
 )
 if !rams2! lss 2500 (echo 内存不足,请谨慎运行)
 del tmp.txt
 del tmp2.txt
 echo ------------------------
 echo 就绪....
 echo 10秒钟后开始启动,按任意键跳过等待时间......
timeout /t 10
goto runserver
:runserver
cls
start server.bat
if exist beta.bat (start beta.bat) else (echo 00)
timeout /t 2
goto main
:cho2
start http://127.0.0.1:8000
goto main
:help
cls
echo 1.Github
echo 2.知乎
echo 3.启动器更新
echo 4.返回
ECHO --------------------------------------------------
echo 制作:style2paints团队
echo style2paints遵循LICENSE-Apache License 2.0
echo 但我们保留所有关于训练模型的权利
ECHO WARNING:we reserve all rights about these models
ECHO --------------------------------------------------
echo 微博@Style2Paints  知乎@一秒一喵
choice /c 1234 /n 
if %errorlevel%==1 (start https://github.com/lllyasviel/style2paints)
if %errorlevel%==2 (start https://zhuanlan.zhihu.com/p/36560034)
if %errorlevel%==3 (START https://github.com/SNSLogty/style2paints-offline/releases/)
if %errorlevel%==4 (goto main)
goto help
:download
start https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
goto err1
:makese
del server.bat
echo please wait..
timeout /t 1
echo @echo off >>server.cache
echo title style2paints_v3_server >>server.cache
echo echo 即将启动服务...请勿关闭此窗口 >>server.cache
echo timeout /t 3 >>server.cache
echo cls >>server.cache
echo cd %~dp0 >>server.cache
echo echo 开始初始化,耗时大约1分钟,请耐心等待,不要关闭此窗口 >>server.cache
echo echo 加载时下面的日志出现warning等字符属正常现象 >>server.cache
echo echo 若初始化出错会有中文报错提示 >>server.cache
echo echo 出现以下文字即启动成功 >>server.cache
echo echo --------------------------------- >>server.cache
echo echo Listening on http://0.0.0.0:8000/ >>server.cache
echo echo Hit Ctrl-C to quit. >>server.cache
echo echo ---------------------------------- >>server.cache
echo echo 以下是日志内容............. >>server.cache
echo echo on >>server.cache
echo cd server >>server.cache
echo ..\python\python.exe server.py >>server.cache
echo @echo off >>server.cache
echo echo 运行异常或服务停止...按任意键退出 >>server.cache
echo pause>nul >>server.cache
echo exit >>server.cache
rename server.cache server.bat
cls
if exist server.bat (echo 1) else (goto main)
goto cho1
:err1
mode con cols=70 lines=20
echo 你没有完整文件或该启动器放错位置!
echo 请将启动器放在style2paints目录下！
echo 若没有相关文件输入 q 打开下载链接
echo.
echo 下载paintstransfer相关文件地址
echo 链接：https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
echo 提取密码：2333
set /p inputword1=
if "%inputword1%" == "q" (goto download) else cls
exit
:err2
cls
goto makese
:err3
echo 都8102年了电脑还没choice.exe
echo 请去下载相关文件，忽略请输入1
set /p inputword2=
if "%inputword2%" == "1" (goto check) else echo 0
exit
