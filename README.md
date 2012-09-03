# libiconv

libiconv is a character set conversion library from
[http://ftp.gnu.org/pub/gnu/libiconv/](http://ftp.gnu.org/pub/gnu/libiconv/)

PHP currently uses 1.14 released 2011.07.08

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