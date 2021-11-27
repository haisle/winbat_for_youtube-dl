@echo off
:start
echo;
echo Please paste the URL.
echo ctl + v to paste the URL.
echo;
set /p url=""
echo;
echo %url%
youtube-dl -F --yes-playlist %url%
echo;

goto:both
:both
	youtube-dl -f bestvideo+bestaudio --yes-playlist --write-thumbnail %url% -o "%~dp0combined\%%(playlist)s\%%(title)s-%%(id)s.%%(ext)s"
goto:fin
:fin

echo;
echo Download finished! The video file was downloaded in current directory cimbined na folder
echo You can download the another video OR if you close this window by ctr + c
echo;
goto:start
