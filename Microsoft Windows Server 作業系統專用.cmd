@echo off
mode con cols=100 lines=30 & color fc

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
echo           *                        1�G�E�� Windows Server 2019 Standard                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        2�G�E�� Windows Server 2019 Datacenter              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        3�G�E�� Windows Server 2022 Standard                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        4�G�E�� WindowsServer 2022 Datacenter               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        0�G�d�� Windows �E��                                *
echo           *                                                                            *
echo           ==============================================================================

set /P var=":"
if %var%==1 goto 1
if %var%==2 goto 2
if %var%==3 goto 3
if %var%==4 goto 4
if %var%==0 goto look

:1
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *                            Windows Server 2019 Standard                    *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_ ...
echo\
slmgr -ipk N69G4-B89J2-4G8F4-WWYCC-J464C
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
echo           *                        Windows Server 2019 Datacenter                      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG
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
echo           *                           Windows Server 2022 Standard                     *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_
echo\
slmgr -ipk VDYBN-27WPP-V4HQT-9VMD4-VMK7H
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
echo           *                           Windows Server 2022 Datacenter                   *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_
echo\
slmgr -ipk WX4NM-KYWYW-QJJR4-XV3QB-6VM33
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