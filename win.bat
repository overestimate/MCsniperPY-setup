@echo off
WHERE python
IF %ERRORLEVEL% NEQ 0 GOTO :nopython
WHERE git
IF %ERRORLEVEL% NEQ 0 GOTO :nogit
cd %USERPROFILE%
git clone https://github.com/MCsniperPY/MCsniperPY.git
cd %USERPROFILE%/MCsniperPY
python -m pip install -r requirements.txt
ECHO Installed MCSniperPY to %USERPROFILE%/MCsniperPY! You can now run it.
PAUSE
EXIT
:nopython
ECHO No python install found! Install Python 3.8.6 from https://www.python.org/downloads/release/python-386/ to continue.
PAUSE
EXIT
:nogit
ECHO No git install found! Install Git for Windows from https://git-scm.com/download/win to continue.
PAUSE
EXIT
