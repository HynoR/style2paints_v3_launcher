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
del ��ʼ.bat
echo FirstRun=False >> macaron\macaron.ini
if exist server.bat (goto main) else (goto err2)
goto main
:main
rem ������by����Ⱥ�ڵ����д���
cls
echo ----------------------------------------------
echo style2paints���߰汾:3.0   ��ǰģʽ:CPU
echo style2paints�������汾:macaron_0.11beta
echo ����������ҵ��;��
echo ----------------------------------------------
echo ���������������ɹ����ٴ򿪽���
echo ʹ��ʱ����رշ��񴰿�
echo ----------------------------------------------
echo �밴�¶�Ӧ����(1/2/3/4/5/6)
echo 1.��������
echo 2.�򿪽���
echo 3.��ɫ�̳�
echo 4.Style2paints-Github
echo 5.������Bug�㱨�Լ�����
echo 6.�ر�
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
echo echo ������������...����رմ˴��� >>server.cache
echo timeout /t 3 >>server.cache
echo cls >>server.cache
echo echo ��ʼ��ʼ��,��ʱ��Լ1����,�����ĵȴ�,��Ҫ�رմ˴��� >>server.cache
echo echo ����ʱ�������־����warning���ַ����������� >>server.cache
echo echo ����ʼ������������ı�����ʾ >>server.cache
echo echo �����������ּ������ɹ� >>server.cache
echo echo --------------------------------- >>server.cache
echo echo Listening on http://0.0.0.0:8000/ >>server.cache
echo echo Hit Ctrl-C to quit. >>server.cache
echo echo ---------------------------------- >>server.cache
echo echo ��������־����............. >>server.cache
echo echo on >>server.cache
echo cd server >>server.cache
echo ..\python\python.exe server.py >>server.cache
echo @echo off >>server.cache
echo echo �����쳣�����ֹͣ...��������˳� >>server.cache
echo pause>nul >>server.cache
echo exit >>server.cache
rename server.cache server.bat
cls
goto first2
:err1
mode con cols=70 lines=20
echo ��û�������ļ�����������Ŵ�λ��!
echo �뽫����������style2paintsĿ¼�£�
echo ��û������ļ����� q ����������
echo.
echo ����paintstransfer����ļ���ַ
echo ���ӣ�https://pan.baidu.com/s/1x5dSFjTT9OkARhbIupSKxQ 
echo ��ȡ���룺2333
set /p inputword1=
if "%inputword1%" == "q" (goto download) else cls
exit
:err2
cls
goto makese
:err3
echo ��8102���˵��Ի�ûchoice.exe
echo ��ȥ��������ļ�������������1
set /p inputword2=
if "%inputword2%" == "1" (goto check) else echo 0
exit