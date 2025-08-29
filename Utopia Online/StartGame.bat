@ECHO OFF
IF EXIST "log" (GOTO LogDelete) ELSE (GOTO RunGame)

:RunGame
start system\Game.exe pKcfT0PcaX
EXIT

:LogDelete
FOR /D %%x IN (log*) DO (rd /s /q "%%x")
IF EXIST "calua_err.txt" (del /s /q "calua_err.txt")>nul 2>nul
IF EXIST "lua_err.txt" (del /s /q "lua_err.txt")>nul 2>nul
IF EXIST "system/log" (rd /s /q "system/log")>nul 2>nul
GOTO RunGame