# Microsoft Developer Studio Project File - Name="libiconv_static" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=libiconv_static - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libiconv_static.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libiconv_static.mak" CFG="libiconv_static - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libiconv_static - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libiconv_static - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libiconv_static - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I ".\..\..\MSVC6" /I ".\..\..\source" /I ".\..\..\source\lib" /I ".\..\..\source\include" /FI"vc6.h" /D "HAVE_CONFIG_H" /D ENABLE_RELOCATABLE=1 /D "IN_LIBRARY" /D "NO_XMALLOC" /D relocate=libiconv_relocate /D set_relocation_prefix=libiconv_set_relocation_prefix /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Release\libiconv_a.lib"

!ELSEIF  "$(CFG)" == "libiconv_static - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I ".\..\..\MSVC6" /I ".\..\..\source" /I ".\..\..\source\lib" /I ".\..\..\source\include" /FI"vc6.h" /D "HAVE_CONFIG_H" /D ENABLE_RELOCATABLE=1 /D "IN_LIBRARY" /D "NO_XMALLOC" /D relocate=libiconv_relocate /D set_relocation_prefix=libiconv_set_relocation_prefix /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Debug\libiconv_a_debug.lib"

!ENDIF 

# Begin Target

# Name "libiconv_static - Win32 Release"
# Name "libiconv_static - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\source\lib\iconv.c
# End Source File
# Begin Source File

SOURCE="..\..\source\libcharset\lib\localcharset.c"
# End Source File
# Begin Source File

SOURCE="..\..\source\lib\relocatable.c"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE="..\..\source\config.h"
# End Source File
# Begin Source File

SOURCE="..\..\source\include\iconv.h"
# End Source File
# Begin Source File

SOURCE="..\..\source\lib\localcharset.h"
# End Source File
# End Group
# End Target
# End Project
