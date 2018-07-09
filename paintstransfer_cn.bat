@echo off
title style2paints_macaron
mode con cols=50 lines=26
color 0A
:choicecheck
if exist %windir%\System32\choice.exe goto check  else (goto err3)
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
del 开始.bat
echo FirstRun=False >> macaron\macaron.ini
if exist server.bat (goto main) else (goto err2)
goto main
:main
rem 启动器by交流群内的所有大佬
cls
echo ----------------------------------------------
echo style2paints离线版本:3.0   当前模式:CPU
echo style2paints启动器版本:macaron_0.11beta
echo 请勿用于商业用途！
echo ----------------------------------------------
echo 先启动服务，启动成功后再打开界面
echo 使用时请勿关闭服务窗口
echo ----------------------------------------------
echo 请按下对应数字(1/2/3/4/5/6)
echo 1.启动服务
echo 2.打开界面
echo 3.上色教程
echo 4.Style2paints-Github
echo 5.启动器Bug汇报以及反馈
echo 6.关闭
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
start https://zhuanlan.zhihu.com/p/36560034
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
echo echo 即将启动服务...请勿关闭此窗口 >>server.cache
echo timeout /t 3 >>server.cache
echo cls >>server.cache
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
goto first2
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
