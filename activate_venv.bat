echo on
set PYTHON37=%UserProfile%\AppData\Local\Programs\Python\Python37\python.exe

%PYTHON37% --version

REM set variabless
set TMP_DIR=tmp\python
set ENV_NAME=assignment-venv

REM create virtual environment.
%PYTHON37% -m venv %TMP_DIR%\%ENV_NAME%
set VENV_DIR=%TMP_DIR%\%ENV_NAME%\Scripts

REM Activate
%VENV_DIR%\activate 
