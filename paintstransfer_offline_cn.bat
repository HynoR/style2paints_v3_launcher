@echo off
color 0A
setlocal enabledelayedexpansion
set versionw=0.21
title style2paints_macaron version %versionw%BETA
:choicecheck
if exist %windir%\System32\choice.exe goto check  else (goto err3)
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
echo 请按下相应数字
choice /c 1234 /n 
if %errorlevel%==1 (goto makese)
if %errorlevel%==2 (goto cho2)
if %errorlevel%==3 (goto help)
if %errorlevel%==4 (exit)
::程序部分开始
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
if %errorlevel%==3 (start https://github.com/SNSLogty/style2paints-offline/releases)
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
