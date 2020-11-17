!IFNDEF VERSION
VERSION=unknown
!ENDIF

!IF "$(PHP_SDK_ARCH)" == "x64"
PLATFORM=x64
!ELSE
PLATFORM=Win32
!ENDIF

OUTPUT=$(MAKEDIR)\..\libiconv-$(VERSION)-$(PHP_SDK_VS)-$(PHP_SDK_ARCH)
ARCHIVE=$(OUTPUT).zip

all:
	git checkout .
	git clean -fdx

	cd MSVC$(PHP_SDK_VS_NUM)
	msbuild libiconv.sln /t:Rebuild /p:Configuration=Release /p:Platform=$(PLATFORM)
	msbuild libiconv.sln /t:Rebuild /p:Configuration=Debug /p:Platform=$(PLATFORM)

	-rmdir /s /q $(OUTPUT)
	xcopy $(PLATFORM)\bin\*.dll $(OUTPUT)\bin\*
	xcopy $(PLATFORM)\bin\*.pdb $(OUTPUT)\bin\*
	xcopy ..\source\include\iconv.h $(OUTPUT)\include\*
	xcopy $(PLATFORM)\lib\*.lib $(OUTPUT)\lib\*
	xcopy $(PLATFORM)\lib\*.pdb $(OUTPUT)\lib\*

	del $(ARCHIVE)
	7za a $(ARCHIVE) $(OUTPUT)\*
