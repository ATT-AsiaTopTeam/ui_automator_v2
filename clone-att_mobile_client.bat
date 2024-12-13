@echo off

:: Kill all progress of Node.js
echo Killing all progress of Node.js...
taskkill /f /im node.exe

:: Delete old shortcuts
echo Deleting old shortcuts...
del "%UserProfile%\Desktop\_CHAY_LAN_DAU.lnk"
del "%UserProfile%\Desktop\_KHOI_DONG_LAI.lnk"
del "%UserProfile%\Desktop\_TRANG_QUAN_LY.lnk"
del "%UserProfile%\Desktop\_XEM_TIEN_TRINH.lnk"
del "%UserProfile%\Desktop\_CAP_NHAT.lnk"

:: cd C:\ and clone repository
echo Begin cloning att_mobile_client...
cd C:\
git clone git@github.com:Rikiatt/att_mobile_client.git

:: Move to directory: C:\att_mobile_client
cd C:\att_mobile_client

:: Copy and paste .lnk, .bat files to Desktop using xcopy
xcopy "RESTART.lnk" "%USERPROFILE%\Desktop\" /y /v /k
xcopy "START.lnk" "%USERPROFILE%\Desktop\" /y /v /k
xcopy "KillNodeJS.bat" "%USERPROFILE%\Desktop\" /y /v /k
xcopy "UPDATE.lnk" "%USERPROFILE%\Desktop\" /y /v /k

echo Copied to desktop successfully!
pause

:: Finish
echo Finished!
pause

exit