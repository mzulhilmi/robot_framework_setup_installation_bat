@echo off

echo Please make sure you already download python-2.7.14.msi and save at the same folder with this batch file
pause

echo Install Python
msiexec /i python-2.7.14.msi TARGETDIR=C:\Python27 /qb ALLUSER=1
pause

echo Set Python Variable
setx Path "%Path%;C:\Python27\Scripts;C:\Python27"
pause

echo Install Robot Framework
python -m pip install robotframework
pause

echo Install Selenium2Library
python -m pip install robotframework-selenium2library
pause

echo Installation Complete!!! Enjoy Your Automation!!!
pause