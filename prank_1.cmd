@echo off
color a
taskkill /f /im "explorer.exe"
echo set speech = Wscript.CreateObject("SAPI.spVoice") > "speech.vbs"
set "text=Your device has a problem, press any key!"
echo speech.speak "%text%" >> "speech.vbs"
start speech.vbs
echo Your device has a serious problem
echo Press any key to continue
pause
del speech.vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice") > "speech.vbs"
set "text=Just kidding, everything is fine!"
echo speech.speak "%text%" >> "speech.vbs"
start speech.vbs
pause
start explorer.exe