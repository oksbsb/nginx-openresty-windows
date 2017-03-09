rem cmd /c build_rds_parser_x64.bat > build.log 2>&1
rem cmd /c build_all_x64.bat >> build.log 2>&1

cd /d %~dp0

mkdir objs\release

copy objs\nginx.exe objs\release\ /y
copy objs\nginx.pdb objs\release\ /y

copy objs\CRT_x64\zlib.dll objs\release\ /y
copy objs\CRT_x64\zlib.pdb objs\release\ /y

copy objs\cjson.dll objs\release\ /y
copy objs\cjson.pdb objs\release\ /y

copy objs\lua51.dll objs\release\ /y
copy objs\lua51.pdb objs\release\ /y

copy objs\CRT_x64\libeay32.dll objs\release\ /y
copy objs\CRT_x64\libintl-8.dll objs\release\ /y
copy objs\CRT_x64\libpq.dll objs\release\ /y
copy objs\CRT_x64\ssleay32.dll objs\release\ /y

copy objs\CRT_x64\Microsoft.VC90.CRT.manifest objs\release\ /y
copy objs\CRT_x64\msvcm90.dll objs\release\ /y
copy objs\CRT_x64\msvcp90.dll objs\release\ /y
copy objs\CRT_x64\msvcr90.dll objs\release\ /y

xcopy conf objs\release\conf\ /e /y
xcopy html objs\release\html\ /e /y
xcopy objs\lua\ngx objs\release\ngx\ /e /y
xcopy objs\lua\resty objs\release\resty\ /e /y

mkdir objs\release\rds
copy objs\rds_parser.dll objs\release\rds\parser.dll /y
copy objs\rds_parser.pdb objs\release\rds\ /y

mkdir objs\release\redis
copy objs\redis_parser.dll objs\release\redis\parser.dll /y
copy objs\redis_parser.pdb objs\release\redis\ /y

mkdir objs\release\temp
mkdir objs\release\lua
mkdir objs\release\logs

echo hello>placeholder.txt
copy placeholder.txt objs\release\temp\ /y
copy placeholder.txt objs\release\lua\ /y
copy placeholder.txt objs\release\logs\ /y

del placeholder.txt