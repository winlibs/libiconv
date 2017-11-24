msbuild libiconv.sln /t:Rebuild /p:Configuration=Release /p:Platform=Win32 
msbuild libiconv.sln /t:Rebuild /p:Configuration=Debug /p:Platform=Win32 
xcopy ..\source\include\iconv.h Win32\include\
msbuild libiconv.sln /t:Rebuild /p:Configuration=Release /p:Platform=x64 
msbuild libiconv.sln /t:Rebuild /p:Configuration=Debug /p:Platform=x64 
xcopy ..\source\include\iconv.h x64\include\
