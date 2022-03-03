@ECHO OFF
pushd %~dp0
adb.exe connect 127.0.0.1:58526
for %%f in (AppToInstall\*) do (
adb.exe install %%f
)
adb.exe disconnect 127.0.0.1:58526
@ECHO Script Finished
pause
