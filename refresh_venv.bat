echo on
set PYTHON37=%UserProfile%\AppData\Local\Programs\Python\Python37\python.exe

%PYTHON37% --version

REM set variabless
set TMP_DIR=tmp\python
set ENV_NAME=assignment-venv

REM create dirs
if not exist "%TMP_DIR%" mkdir %TMP_DIR%

REM create virtual environment.
%PYTHON37% -m venv %TMP_DIR%\%ENV_NAME%
set VENV_DIR=%TMP_DIR%\%ENV_NAME%\Scripts
set PYTHON_VENV=%VENV_DIR%\python.exe

REM populate virtual environment with packages from requirement.txt files.
Start /WAIT cmd /k "%VENV_DIR%\activate &^
%PYTHON_VENV% -m pip install --upgrade pip &^
%PYTHON_VENV% -m pip install --upgrade -r .\requirements.txt&^
%PYTHON_VENV% -m pip install --upgrade -r .\requirements_text.txt --no-dependencies&^
%PYTHON_VENV% -m pip list&^
%VENV_DIR%\deactivate&^
pause
