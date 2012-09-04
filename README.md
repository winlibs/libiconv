# libiconv

libiconv is a character set conversion library from
[http://ftp.gnu.org/pub/gnu/libiconv/](http://ftp.gnu.org/pub/gnu/libiconv/)

PHP currently uses 1.14 released 2011.08.07

libiconv development has been moved to [https://savannah.gnu.org/projects/libi
conv/](https://savannah.gnu.org/projects/libiconv/)

Because iconv.exe is GPL licensed, the author has decided to drop support for
building on msvc altogether, because building on newer compilers that require
separate distributions of MS runtimes might cause gpl violations (you can
simply point people to the runtime installers provided by microsoft and not
include them with the program…but that's another story). However, libiconv is
lgpl and does not have these restrictions, the versions on php.net are
compiled with Microsoft compilers with a small patch to fix compiler warnings
and errors.

If someone has the time or energy the patch should probably be sent upstream
to the bugs list.

# Building for PHP

The solution has static and dll projects. Both of them have to be built in
debug and release mode. The binaries have to be put into the deps tree with
the following structure:

    
    lib:
    libiconv_debug.lib
    libiconv_a_debug.lib
    libiconv_a.lib
    libiconv.lib
    
    include:
    iconv.h
    
    bin:
    libiconv_debug.pdb
    libiconv_debug.dll
    libiconv.pdb
    libiconv.dll

After this the iconv PHP extension can be built static or shared.
