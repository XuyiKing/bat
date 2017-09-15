@echo off&mode con cols=50 lines=19&color 0c&title 机房恶意隐藏病毒专杀工具---卢立坤制作
taskkill /f /im svchost.exe
cls
echo.
echo ┍┅┅┅┅┅┅┅┅机房病毒专杀┅┅┅┅┅┅┅┅┅┑
echo   精简版	作者：卢立坤	QQ:824999591
for /f "tokens=2 delims==" %%a in ('wmic LogicalDisk where "DriveType='2'" get DeviceID /value') do (set DriveU=%%a &call :start) 
if EXIST "%DriveU%" (goto end
) else (echo   没有找到U盘&echo   请插入U盘后重新运行 &goto end
)

:start
%DriveU%
cd\
echo   正在查杀%DriveU%...
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
echo   查杀完成！！！

goto :eof
pause

:end
echo   请按任意键继续......
echo ┕┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┙
pause>nul