@echo off
title style2paints启动端-cpu_mode_v3
mode con cols=40 lines=20
color 0A
:check
if exist server\server.py (echo f1/6) else (goto err1)
if exist server\baby.net (echo f2/6) else (goto err1)
if exist server\tail.net (echo f3/6) else (goto err1)
if exist server\girder.net (echo f4/6) else (goto err1)
if exist server\neck.net (echo f5/6) else (goto err1)
if exist server\head.net (echo f6/6) else (goto err1)
rem check files
cls
goto main
:main
rem 启动器by交流群内的所有大佬
cls
echo -----------------------------------
echo style2paints_v3启动器
echo 请勿用于商业用途！
echo -----------------------------------
echo 先启动服务，启动成功后再打开界面
echo 使用时请勿关闭服务窗口
echo -----------------------------------
echo 请按下对应数字(1/2/3/4/5)
echo 1.启动服务
echo 2.打开界面
echo 3.上色教程
echo 4.Github开源地址
echo 5.关闭
choice /c 12345 /n 
if %errorlevel%==1 (goto cho1)
if %errorlevel%==2 (goto cho2)
if %errorlevel%==3 (goto help)
if %errorlevel%==4 (goto about)
if %errorlevel%==5 (exit)
:cho1
if exist server.bat (echo 0) else (goto err2)
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
:err1
mode con cols=70 lines=20
start https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ
echo 你没有完整文件或该启动器放错位置!
echo 请下载paintstransfer相关文件
echo 链接：https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
echo 提取密码：2333
echo 请将启动器放在style2paints目录下！
pause
exit
:err2
cls
echo 你没有服务启动器，是否生成一个(y/n)
choice /c yn /n 
if %errorlevel%==1 (goto makese)
if %errorlevel%==2 (exit)
:makese
del server.bat
echo @echo off >>server.cache
echo title style2paints_v3_server >>server.cache
echo echo 即将启动服务...请勿关闭此窗口 >>server.cache
echo timeout /t 3 >>server.cache
echo cls >>server.cache
echo echo 开始初始化...请勿关闭此窗口 >>server.cache
echo echo 出现以下文字即启动成功 >>server.cache
echo echo --------------------------------- >>server.cache
echo echo Listening on http://0.0.0.0:8000/ >>server.cache
echo echo Hit Ctrl-C to quit. >>server.cache
echo echo ---------------------------------- >>server.cache
echo echo on >>server.cache
echo cd server >>server.cache
echo ..\python\python.exe server.py >>server.cache
echo @echo off >>server.cache
echo echo 运行异常或服务停止...按任意键退出 >>server.cache
echo pause>nul >>server.cache
echo exit >>server.cache
rename server.cache server.bat
goto check
