
SET USD_ROOT=W:/software/develop/usd
SET LIB_ROOT=W:/software/develop/dependences
SET USD_LIB=%LIB_ROOT%/stage/local
SET MAYA_LIB=%LIB_ROOT%/devkit/maya2017_windows_update3/devkitBase
SET USD_REPO=%USD_ROOT%/lca_usd_develop/git_repo/USD_win_ip
SET USD_INSTALL=W:/software/develop/usd/lca_usd_house/usd_win64_ip

REM ensure a 64 bit development environment using VS2015
IF NOT "%VisualStudioVersion%"=="14.0" ^
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64


cmake %USD_REPO% ^
      -DPXR_VALIDATE_GENERATED_CODE=ON ^
      -DPXR_BUILD_MAYA_PLUGIN=1 ^
      -DPXR_BUILD_KATANA_PLUGIN=0 ^
      -DPXR_BUILD_ALEMBIC_PLUGIN=0 ^
      -DCMAKE_INSTALL_PREFIX="%USD_INSTALL%" ^
      -DPXR_INSTALL_LOCATION="%USD_INSTALL%" ^
      -DCMAKE_PREFIX_PATH="%USD_LIB%" ^
      -DALEMBIC_DIR="%USD_LIB%" ^
      -DDOUBLE_CONVERSION_DIR="%USD_LIB%" ^
      -DGLEW_LOCATION="%USD_LIB%" ^
      -DOIIO_LOCATION="%USD_LIB%" ^
      -DOPENEXR_ROOT_DIR="%USD_LIB%" ^
      -DOPENSUBDIV_ROOT_DIR="%USD_LIB%" ^
      -DPTEX_LOCATION="%USD_LIB%" ^
      -DHDF5_ROOT="%USD_LIB%" ^
      -DTBB_ROOT_DIR="%USD_LIB%" %tbb_debug% ^
      -DPYSIDE_BIN_DIR="C:\Python27\Scripts" ^
      -DBoost_INCLUDE_DIR="%USD_LIB%"/include -DBoost_LIBRARY_DIR="%USD_LIB%"/lib ^
      -DMAYA_BASE_DIR="C:\Program Files\Autodesk\Maya2017" ^
      -DMAYA_tbb_LIBRARY="%USD_LIB%\lib\tbb.lib" ^
      -DMAYA_LOCATION="%MAYA_LIB%" ^
      -DMAYA_cgGL_LIBRARY="C:\Program Files\Autodesk\Maya2017\lib\cgGL.lib" ^
      -DMAYA_cg_LIBRARY="C:\Program Files\Autodesk\Maya2017\lib\cg.lib" ^
      -G "Visual Studio 14 2015 Win64"
