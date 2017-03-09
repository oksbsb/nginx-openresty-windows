cmd.exe /c build_all_x64.bat > build.log 2>&1

cd /d %~dp0

mkdir objs\release

copy objs\nginx.exe objs\release\ /y
copy objs\nginx.pdb objs\release\ /y

copy objs\zlib.dll objs\release\ /y
copy objs\zlib.pdb objs\release\ /y

copy objs\cjson.dll objs\release\ /y
copy objs\cjson.pdb objs\release\ /y

copy objs\lua51.dll objs\release\ /y
copy objs\lua51.pdb objs\release\ /y

copy objs\libeay32.dll objs\release\ /y
copy objs\libintl-8.dll objs\release\ /y
copy objs\libpq.dll objs\release\ /y
copy objs\ssleay32.dll objs\release\ /y

copy objs\Microsoft.VC90.CRT.manifest objs\release\ /y
copy objs\msvcm90.dll objs\release\ /y
copy objs\msvcp90.dll objs\release\ /y
copy objs\msvcr90.dll objs\release\ /y

xcopy conf objs\release\conf\ /e /y
xcopy html objs\release\html\ /e /y
xcopy objs\lua\ngx objs\release\ngx\ /e /y
xcopy objs\lua\resty objs\release\resty\ /e /y

mkdir objs\release\temp
mkdir objs\release\lua
mkdir objs\release\logs

echo hello>placeholder.txt
copy placeholder.txt objs\release\temp\ /y
copy placeholder.txt objs\release\lua\ /y
copy placeholder.txt objs\release\logs\ /y

del placeholder.txt