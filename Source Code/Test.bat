@Echo off
cls
Set "Path=%Path%;%cd%;%CD%\files"

Title RC4 Usage DEMO - www.thebateam.org

Set "File=Demo.Rc4"

Color 07
Echo.
Echo. Enter "TheBATeam" as Password to Decrypt the Demo file...
Echo. Encrypted File Name: "%File%"
echo.
Set /p "Password=Password>"

If /I "%Password%" NEQ "TheBATeam" (Color 0C&&Echo. Please Relaunch the File and Enter Correct Password.&&Goto :End)

Rc4 %Password% "%file%" "TheBATeam LOGO - Decrypted.png"

Color 0A
Echo. Check if the Decrypted file is Generated in the Same Folder?
Echo. Try opening it, Press any Key to Exit...

:End
Pause>nul

Exit