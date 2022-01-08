@echo off
:start
echo;
echo Please paste the URL.
echo ctl + v to paste the URL.
echo;
set /p preurl=""
rem this part remove timestamp t=xxx from %preurl%
for /f "tokens=1 delims=&" %%a in ("%preurl%") do (set url=%%a)
echo;
echo %url%
yt-dlp -F --yes-playlist %url%
echo;

goto:both
:both
	yt-dlp --download-archive "%~dp0\ytdlpdownloaded_list.txt" %url% -o "%~dp0combined\%%(playlist)s\%%(channel)s-%%(channel_id)s\%%(title)s-%%(upload_date)s-%%(id)s.%%(ext)s"
goto:fin
:fin

echo;
echo Download finished! The video file was downloaded in current directory cimbined na folder
echo You can download the another video OR if you close this window by ctr + c
echo;
goto:start