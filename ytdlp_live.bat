@echo off
:start
echo URL?
echo ì\ÇËïtÇØÇÈèÍçáÇÕà»â∫ÇÃÇ∆Ç®ÇËÇ…ì¸óÕ
echo 				Alt + space
echo 				E
echo 				P
set /p url=""
echo;
echo %url%
youtube-dl -F --yes-playlist %url%
echo;

:both
	yt-dlp %url% --hls-use-mpegts -o "[%(upload_date)s] %(title)s - %(id)s onlive.%(ext)s" 
	yt-dlp %url% -o "[%(upload_date)s] %(title)s - %(id)s complete.%(ext)s" 	
goto:fin
:fin

echo;
echo Download finished! The video file was downloaded in current directory > cimbined > n/a folderÅB
echo You can download the another video OR if you close this window by ctr + c
echo;
goto:start