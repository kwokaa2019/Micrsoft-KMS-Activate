@echo off
mode con cols=100 lines=40 & color fc

rem ����޲z���v��
:: BatchGotAdmin  
:-------------------------------------  
rem  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo ����޲z���v����,�p�GUAC�u��,�п�ܤ��\.....
    goto UACPrompt  
) else ( goto gotAdmin )   
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"   
    "%temp%\getadmin.vbs"
    exit /B  
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
    pushd "%CD%"  
    CD /D "%~dp0"

rem �E������
cls
:start
echo\
echo                                          �п�J�Ʀr���:
echo\
echo           ==============================================================================
echo           *                                                                            *
echo           *          1�G�E�� Windows 11 �M�~��                                          *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *          2�G�E�� Windows 11 �M�~�u�@����                                     *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *          3�G�E�� Windows 11 �M�~�Ш|��                                       *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *          4�G�E�� Windows 11 ���~��                                          *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *          5�G�E�� Windows 11 �Ш|��                                          *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *          0�G�d�� Windows �E��                                               *
echo           *                                                                            *
echo           ==============================================================================

set /P var=":"
if %var%==1 goto 1
if %var%==2 goto 2
if %var%==3 goto 3
if %var%==4 goto 4
if %var%==5 goto 5
if %var%==0 goto look

:1
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                            Windows 11 �M�~��                               *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_ ...
echo\
slmgr -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo\
echo                                     �ĤG�B �]�wKMS �D��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰ʳs��KMS�n�D�ҥ�...
echo\
slmgr -ato
goto exit


:2
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                        Windows 11 Pro for Workstations�M�~�u�@����          *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
echo\
echo                                     �ĤG�B �]�wKMS �D��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰ʳs��KMS�n�D�ҥ�...
echo\
slmgr -ato
goto exit


:3
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                           Windows 11 Professional Education �M�~�Ш|��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_
echo\
slmgr -ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo\
echo                                     �ĤG�B �]�wKMS �D��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰ʳs��KMS�n�D�ҥ�...
echo\
slmgr -ato
goto exit


:4
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                           Windows 11 Enterprise ���~��                      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_
echo\
slmgr -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo\
echo                                     �ĤG�B �]�wKMS �D��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰ʳs��KMS�n�D�ҥ�...
echo\
slmgr -ato
goto exit


:5
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                           Windows 11 Education	�Ш|��                       *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_
echo\
slmgr -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo\
echo                                     �ĤG�B �]�wKMS �D��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰ʳs��KMS�n�D�ҥ�...
echo\
slmgr -ato
goto exit



:look
cls
echo\
echo                                           �`�N�u�X���f
slmgr.vbs -dlv
goto exit


:exit
echo\
echo\
echo\
echo\
echo\
echo\
echo           *******************************���O�w����*************************************
echo           *                                                                            *
echo           *                                                                            *
echo           *                              �����N�h�X                                    *
echo           *                                                                            *
echo           *                                                                            *
echo           ******************************************************************************
pause>nul 
& exit