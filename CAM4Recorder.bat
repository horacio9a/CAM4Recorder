@ECHO OFF
SETLOCAL EnableDelayedExpansion
:START
CLS
ECHO.
CLS && ECHO #############################################################################
ECHO ###    C A M 4 R E C O R D E R   F O R   P Y T H O N   3   S C R I P T    ###
ECHO #############################################################################
ECHO.
SET /P MODE=EXIT(3) CAM4Rec_SL(1) CAM4Rec_LS(0)(ENTER)(%MODE%): 
IF "%MODE%"=="" GOTO CAM4RLS
IF "%MODE%"=="0" GOTO CAM4RLS
IF "%MODE%"=="1" GOTO CAM4RSL
IF "%MODE%"=="2" GOTO EXIT
:CAM4RLS
ECHO.
CLS && ECHO #####################################################
ECHO ### CAM4Rec_LS ##### R E C O R D I N G ##############
ECHO #####################################################
cd C:/
COLOR 0F
cd CAM4Recorder
python CAM4Rec_LS.py
ECHO.
PAUSE
GOTO START
:CAM4RSL
ECHO.
CLS && ECHO #####################################################
ECHO ### CAM4Rec_SL ##### R E C O R D I N G ##############
ECHO #####################################################
cd C:/
COLOR 0F
cd CAM4Recorder
python CAM4Rec_SL.py
ECHO.
PAUSE
GOTO START
:EXIT
GOTO :EOF
ENDLOCAL
