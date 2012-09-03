Source Version: 1.12 2007.11.08 release

Source From: http://ftp.gnu.org/pub/gnu/libiconv/

libiconv in static library and dll versions

All binaries have .rc files for version info specifying which compiler used and that these are 'special builds'

The source is altered in the following manner - CONST_ICONV defined as nothing,
casts added to kill warnings, one strdup changed to _strdup
header files generated with msys configure and microsoft cl.exe and link.exe
exports added to gnulibicon.h