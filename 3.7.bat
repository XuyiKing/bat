@echo off&mode con cols=50 lines=19&color 0c&title �����������ز���רɱ����---¬��������
taskkill /f /im svchost.exe
cls
echo.
echo ��������������������������רɱ��������������������
echo   �����	���ߣ�¬����	QQ:824999591
for /f "tokens=2 delims==" %%a in ('wmic LogicalDisk where "DriveType='2'" get DeviceID /value') do (set DriveU=%%a &call :start) 
if EXIST "%DriveU%" (goto end
) else (echo   û���ҵ�U��&echo   �����U�̺��������� &goto end
)

:start
%DriveU%
cd\
echo   ���ڲ�ɱ%DriveU%...
setlocal enabledelayedexpansion
if EXIST "*.exe" (
for /f "delims=" %%a in ('dir /a-d/b *.exe') do (
set file_size=%%~za
if !file_size! equ 119808 (
attrib -s -h -r "%%~fsa"
del /f "%%~fsa"
)
if !file_size! equ 287232 (
attrib -s -h -r "%%~fsa"
del /f "%%~fsa"
)
)
)
setlocal disabledelayedexpansion
if EXIST "*.lnk" (
for /f "delims=" %%a in ('dir /a-d/b *.lnk') do (
attrib -s -h -r "%%~fsa"
del /f "%%~fsa"
)
)

for /f "delims=?" %%a in ('dir /ah /b') do (attrib -s -h -r "%%a")
echo   ��ɱ��ɣ�����

goto :eof
pause

:end
echo   �밴���������......
echo ��������������������������������������������������
pause>nul