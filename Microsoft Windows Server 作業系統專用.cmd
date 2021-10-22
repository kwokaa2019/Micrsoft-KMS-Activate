@echo off
mode con cols=100 lines=30 & color fc

rem 獲取管理員權限
:: BatchGotAdmin  
:-------------------------------------  
rem  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo 獲取管理員權限中,如果UAC彈窗,請選擇允許.....
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

rem 激活部分
cls
:start
echo\
echo                                          請輸入數字選擇:
echo\
echo           ==============================================================================
echo           *                                                                            *
echo           *                        1：激活 Windows Server 2019 Standard                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        2：激活 Windows Server 2019 Datacenter              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        3：激活 Windows Server 2022 Standard                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        4：激活 WindowsServer 2022 Datacenter               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        0：查看 Windows 激活                                *
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
echo                                         第一步 安裝產品密鑰 ...
echo\
slmgr -ipk N69G4-B89J2-4G8F4-WWYCC-J464C
echo\
echo                                     第二步 設定KMS 主機...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動連接KMS要求啟用...
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
echo                                         第一步 安裝產品密鑰...
echo\
slmgr -ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG
echo\
echo                                     第二步 設定KMS 主機...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動連接KMS要求啟用...
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
echo                                         第一步 安裝產品密鑰
echo\
slmgr -ipk VDYBN-27WPP-V4HQT-9VMD4-VMK7H
echo\
echo                                     第二步 設定KMS 主機...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動連接KMS要求啟用...
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
echo                                         第一步 安裝產品密鑰
echo\
slmgr -ipk WX4NM-KYWYW-QJJR4-XV3QB-6VM33
echo\
echo                                     第二步 設定KMS 主機...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         第三步 自動連接KMS要求啟用...
echo\
slmgr -ato
goto exit



:look
cls
echo\
echo                                           注意彈出窗口
slmgr.vbs -dlv
goto exit


:exit
echo\
echo\
echo\
echo\
echo\
echo\
echo           *******************************指令已完成*************************************
echo           *                                                                            *
echo           *                                                                            *
echo           *                              按任意退出                                    *
echo           *                                                                            *
echo           *                                                                            *
echo           ******************************************************************************
pause>nul 
& exit