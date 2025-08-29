::run it wheere struct file as 
:: -Client source
:: -Satisfy
:: -Server exe
:: -symlinks.bat
:: as all in same root level

:: Server Release
call :MKLINK "%cd%\ServerSide\AccountServer\AccountServer.exe" "%cd%\Server\AccountServer\Bin\AccountServer.exe"
call :MKLINK "%cd%\ServerSide\AccountServer\AccountServer.pdb" "%cd%\Server\AccountServer\Bin\AccountServer.pdb"
call :MKLINK "%cd%\ServerSide\GroupServer\GroupServer.exe" "%cd%\Server\GroupServer\Bin\GroupServer.exe"
call :MKLINK "%cd%\ServerSide\GroupServer\GroupServer.pdb" "%cd%\Server\GroupServer\Bin\GroupServer.pdb"
call :MKLINK "%cd%\ServerSide\GateServer\GateServer.exe" "%cd%\Server\GateServer\Bin\GateServer.exe"
call :MKLINK "%cd%\ServerSide\GateServer\GateServer.pdb" "%cd%\Server\GateServer\Bin\GateServer.pdb"
call :MKLINK "%cd%\ServerSide\GameServer\GameServer.exe" "%cd%\Server\GameServer\Bin\GameServer.exe"
call :MKLINK "%cd%\ServerSide\GameServer\GameServer.pdb" "%cd%\Server\GameServer\Bin\GameServer.pdb"

:: Client Release
call :MKLINK "%cd%\Phoenix Online\system\Game.exe" "%cd%\Client\bin\system\Game.exe"
call :MKLINK "%cd%\Phoenix Online\system\Game.pdb" "%cd%\Client\bin\system\Game.pdb"
call :MKLINK "%cd%\Phoenix Online\system\MindPower3D_D8R.dll" "%cd%\Engine\lib\MindPower3D_D8R.dll"
call :MKLINK "%cd%\Phoenix Online\system\MindPower3D_D8R.pdb" "%cd%\Engine\lib\MindPower3D_D8R.pdb"

:: Server Debug
call :MKLINK "%cd%\ServerSide\AccountServer\AccountServer_D.exe" "%cd%\Server\AccountServer\Bin\AccountServer_D.exe"
call :MKLINK "%cd%\ServerSide\AccountServer\AccountServer_D.pdb" "%cd%\Server\AccountServer\Bin\AccountServer_D.pdb"
call :MKLINK "%cd%\ServerSide\GroupServer\GroupServer_D.exe" "%cd%\Server\GroupServer\Bin\GroupServer_D.exe"
call :MKLINK "%cd%\ServerSide\GroupServer\GroupServer_D.pdb" "%cd%\Server\GroupServer\Bin\GroupServer_D.pdb"
call :MKLINK "%cd%\ServerSide\GateServer\GateServer_D.exe" "%cd%\Server\GateServer\Bin\GateServer_D.exe"
call :MKLINK "%cd%\ServerSide\GateServer\GateServer_D.pdb" "%cd%\Server\GateServer\Bin\GateServer_D.pdb"
call :MKLINK "%cd%\ServerSide\GameServer\GameServer_D.exe" "%cd%\Server\GameServer\Bin\GameServer_D.exe"
call :MKLINK "%cd%\ServerSide\GameServer\GameServer_D.pdb" "%cd%\Server\GameServer\Bin\GameServer_D.pdb"

:: Client Debug
call :MKLINK "%cd%\Phoenix Online\system\Game_D.exe" "%cd%\Client\bin\system\Game_D.exe"
call :MKLINK "%cd%\Phoenix Online\system\Game_D.pdb" "%cd%\Client\bin\system\Game_D.pdb"
call :MKLINK "%cd%\Phoenix Online\system\MindPower3D_D8D.dll" "%cd%\Engine\lib\\MindPower3D_D8D.dll"
call :MKLINK "%cd%\Phoenix Online\system\MindPower3D_D8D.pdb" "%cd%\Engine\lib\\MindPower3D_D8D.pdb"

:: Calua -
::call :MKLINK "%cd%\Phoenix Online\system\CaLua.dll" "%cd%\Client source\Common\CaLua\lib\CaLua.dll"
pause

:MKLINK
if exist "%~1" del /F /Q "%~1"
mklink /h "%~1" "%~2"
EXIT/B 0