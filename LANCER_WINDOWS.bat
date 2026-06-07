@echo off
chcp 65001 > nul
echo.
echo  ╔══════════════════════════════════════════════════╗
echo  ║         GNL EDGE MONITOR — WINDOWS               ║
echo  ║         Systeme IoT Distribue M2 RSID             ║
echo  ╚══════════════════════════════════════════════════╝
echo.

REM Installer les dependances si necessaire
python -c "import flask" 2>nul || (
    echo  Installation des dependances Python...
    pip install flask flask-cors pyjwt scikit-learn numpy requests
)

echo  Demarrage du systeme...
echo.

REM Si Arduino connecte: python start_gnl_windows.py --port COM3
REM Sans Arduino (simulation): python start_gnl_windows.py

python start_gnl_windows.py %*

pause
