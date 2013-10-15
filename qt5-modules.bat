set CL=/MP

call qt5-env.bat

set QTDIR=C:\%QT_WEEKLY_REV%
set LIB=c:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\LIB;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\LIB
set INCLUDE=c:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\INCLUDE;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Include
set PATH=C:\%QT_WEEKLY_REV%-source\qt5\gnuwin32\bin;C:\%QT_WEEKLY_REV%-source\qt5\qtbase\bin;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools;C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcpackages;c:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\BIN;c:\Program Files (x86)\Microsoft VisualStudio 10.0\VC\VCPackages;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin;C:\Python27\;C:\Python27\Scripts;C:\Perl64\site\bin;C:\Perl64\bin;C:\Windows\system32;c:\Windows;C:\Windows\System32\Wbem;C:\Program Files\SlikSvn\bin;C:\Program Files (x86)\Git\bin;C:\Ruby193\bin;
set BUILD_WEBKIT_ARGS=

cd qt5
@echo ==========================================================
cd qtbase && qmake && nmake && nmake install && cd ..
@echo ==========================================================

for %%A in (%QT5_MODULES%) do (
  cd %%A && qmake && nmake && nmake install && cd ..
  @echo ==========================================================
)
cd ..

