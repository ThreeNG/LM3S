@REM This batch file has been generated by the IAR Embedded Workbench
@REM C-SPY Debugger, as an aid to preparing a command line for running
@REM the cspybat command line utility using the appropriate settings.
@REM
@REM Note that this file is generated every time a new debug session
@REM is initialized, so you may want to move or rename the file before
@REM making changes.
@REM
@REM You can launch cspybat by typing the name of this batch file followed
@REM by the name of the debug file (usually an ELF/DWARF or UBROF file).
@REM
@REM Read about available command line parameters in the C-SPY Debugging
@REM Guide. Hints about additional command line parameters that may be
@REM useful in specific cases:
@REM   --download_only   Downloads a code image without starting a debug
@REM                     session afterwards.
@REM   --silent          Omits the sign-on message.
@REM   --timeout         Limits the maximum allowed execution time.
@REM 


"F:\Nghia\Lap trinh he thong nhung\moi truong\common\bin\cspybat" "F:\Nghia\Lap trinh he thong nhung\moi truong\arm\bin\armproc.dll" "F:\Nghia\Lap trinh he thong nhung\moi truong\arm\bin\armlmiftdi.dll"  %1 --plugin "F:\Nghia\Lap trinh he thong nhung\moi truong\arm\bin\armbat.dll" --flash_loader "F:\Nghia\Lap trinh he thong nhung\moi truong\arm\config\flashloader\TexasInstruments\FlashLM3Sx8xx.board" --backend -B "--endian=little" "--cpu=Cortex-M3" "--fpu=None" "-p" "F:\Nghia\Lap trinh he thong nhung\moi truong\arm\CONFIG\debugger\TexasInstruments\LM3S6965.ddf" "--drv_verify_download" "--semihosting" "--device=LM3S6965" "--lmiftdi_speed=500" 


