@echo OFF
MSBuild.exe /? >NUL 
if ERRORLEVEL 1 (
  echo MsBuild not found in PATH. Please, start from Developer Command Prompt or add MSVC MsBuild directory to the PATH.
  exit /B 1
)

MSBuild.exe /m /p:Platform="x86" /p:Configuration=Release external/vpc/vpc.sln
devtools\bin\vpc.exe /2015 /define:NO_STEAM /define:WORKSHOP_IMPORT_DISABLE /define:SIXENSE_DISABLE /define:NO_X360_XDK /define:RAD_TELEMETRY_DISABLED /define:DISABLE_ETW /define:NO_ATI_COMPRESS /define:NO_NVTC /define:LTCG /define:NO_AUTO_P4 -vphysics -bugreporter_filequeue -itemtest_com -itemtest_lib -sdktoolslib -vaudio_miles -video_bink -video_quicktime -video_webm -simdtest -gcsdk -panel_zoo -stdshader_dbg /no_ceg /nofpo /cstrike +game /mksln cstrike.sln
@REM devtools\bin\vpc.exe /f /win32 /define:NO_AUTO_P4 +everything -physics -bugreporter_filequeue -itemtest_com -itemtest_lib -sdktoolslib -vaudio_miles -video_bink -video_quicktime -video_webm -simdtest -gcsdk -panel_zoo -stdshader_dbg /cstrike /mksln cstrike.sln
