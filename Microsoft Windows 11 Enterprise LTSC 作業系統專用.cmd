@ECHO OFF
REM  QBFC Project Options Begin
REM  HasVersionInfo: No
REM  Companyname: 
REM  Productname: 
REM  Filedescription: 
REM  Copyrights: 
REM  Trademarks: 
REM  Originalname: 
REM  Comments: 
REM  Productversion:  0. 0. 0. 0
REM  Fileversion:  0. 0. 0. 0
REM  Internalname: 
REM  Appicon: 
REM  AdministratorManifest: No
REM  QBFC Project Options End
ECHO ON
%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a
cls
@echo off

echo ----------------------------------------------------------------------
echo.
echo                               �`�N�ƶ�
echo.
echo      ���{�ҵ{���ȾA�Φb Microsoft Windows 11 Enterprise LTSC  �@�~�t�ΡA���A�Ψ�L�@�~�t�ΡC
echo.
echo      This certifi program is only applicable to Microsoft Windows 11 Enterprise LTSC operating system, not to other operating systems.�C
echo.
echo ----------------------------------------------------------------------

echo Windows �{�Ҥ�...

echo �Э@�ߵ���...

echo.

if exist %systemroot%\system32\slmgr.vbs GOTO start

GOTO fail

:start

cd\

cscript %systemroot%\system32\slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D

cscript %systemroot%\system32\slmgr.vbs -skms 192.168.1.100:1688 > %temp%\qwdv.tmp

if exist %temp%\qwdv.tmp del %temp%\qwdv.tmp

cscript %systemroot%\system32\slmgr.vbs -ato > %temp%\qwdv.tmp

if exist %temp%\sdfw.tmp del %temp%\sdfw.tmp

cscript %systemroot%\system32\slmgr.vbs -xpr

goto end

:fail

echo Windows �{�ҥ��ѡA�нT�{�@�~�t�Ϊ����ιq���������A�C

echo.

:end

pause