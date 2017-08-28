set(LOCAL_LIB /mnt/work/software/develop/dependences)

#boost
set(Boost_DIR ${LOCAL_LIB}/boost_155)
set(BOOST_ROOT ${LOCAL_LIB}/boost_155)
set(BOOST_INCLUDEDIR ${LOCAL_LIB}/boost_155/include)

set(Boost_INCLUDE_DIRS ${LOCAL_LIB}/boost_155/include)
set(Boost_LIBRARY_DIRS ${LOCAL_LIB}/boost_155/lib)


#double conversion
set(DOUBLE_CONVERSION_INCLUDE_DIR ${LOCAL_LIB}/double_conversion/include)
set(DOUBLE_CONVERSION_LIBRARY ${LOCAL_LIB}/double_conversion/lib64/libdouble-conversion.so)


#tbb
set(TBB_ROOT_DIR ${LOCAL_LIB}/tbb44)
set(TBB_INCLUDE_DIR ${LOCAL_LIB}/tbb44/include)
set(TBB_LIBRARY ${LOCAL_LIB}/tbb44/lib/intel64/gcc4.4/libtbb.so)
set(TBB_tbb_LIBRARY ${LOCAL_LIB}/tbb44/lib/intel64/gcc4.4/libtbb.so)
set(MAYA_tbb_LIBRARY ${LOCAL_LIB}/tbb44/lib/intel64/gcc4.4/libtbb.so)

#oiio
set(OIIO_BASE_DIR ${LOCAL_LIB}/oiio)


#glew
set(GLEW_LOCATION ${LOCAL_LIB}/glew)
set(GLEW_LIBRARY ${LOCAL_LIB}/glew/lib/libGLEW.so)
set(GLEW_INCLUDE_DIR ${LOCAL_LIB}/glew/include)


#opensubdiv
set(OPENSUBDIV_ROOT_DIR ${LOCAL_LIB}/open_subd)

#ptex
set(PTEX_LOCATION ${LOCAL_LIB}/ptex)
set(PTEX_INCLUDE_DIR ${LOCAL_LIB}/ptex/include)

#openexr
set(OPENEXR_ROOT_DIR ${LOCAL_LIB}/open_exr)
set(OPENEXR_INCLUDE_DIR ${LOCAL_LIB}/open_exr/include)
set(OPENEXR_LIBRARY_DIR ${LOCAL_LIB}/open_exr/lib)

set(OPENEXR_Half_LIBRARY ${OPENEXR_LIBRARY_DIR}/libHalf.so)
set(OPENEXR_Iex_LIBRARY ${OPENEXR_LIBRARY_DIR}/libIex.so)
set(OPENEXR_IlmImf_LIBRARY ${OPENEXR_LIBRARY_DIR}/libIlmImf.so)
set(OPENEXR_IlmThread_LIBRARY ${OPENEXR_LIBRARY_DIR}/libIlmThread.so)
set(OPENEXR_Imath_LIBRARY ${OPENEXR_LIBRARY_DIR}/libImath.so)

#flex
set(FLEX_ROOT ${LOCAL_LIB}/flex)
set(FLEX_EXECUTABLE ${LOCAL_LIB}/flex/bin/flex)
set(FLEX_INCLUDE_DIR ${LOCAL_LIB}/flex/include)
set(FL_LIBRARY ${LOCAL_LIB}/flex/lib/libfl.a)


#pyside
set(PYSIDE ${LOCAL_LIB}/py2.7-qt4.8.6-pyside1.2.4-64bit-release)
set(PYSIDEUICBINARY ${PYSIDE}/bin/pyside-uic)

#python
set(PYTHON_EXECUTABLE /opt/rh/python27/root/usr/bin/python2.7)
set(PYTHON_INCLUDE_DIRS /opt/rh/python27/root/usr/include/python2.7)
set(PYTHON_LIBRARIES /opt/rh/python27/root/usr/lib64/python2.7/config/libpython2.7.so)
set(PYTHONPATH ${PYSIDE}/lib64/python2.7/site-packages/PySide ${PYTHONPATH})

set(CMAKE_C_FLAGS " -std=c++11 ")
set(CMAKE_CXX_FLAGS " -std=c++11 ")

set(CMAKE_C_COMPILER /opt/rh/devtoolset-2/root/usr/bin/gcc)
set(CMAKE_CXX_COMPILER /opt/rh/devtoolset-2/root/usr/bin/g++)


# other things

#katana
set(KATANA_API_LOCATION /mnt/work/software/katana/katana2.6v1/plugin_apis)
set(KATANA_API_BASE_DIR ${KATANA_API_LOCATION})
set(KATANA_API_INCLUDE_DIR ${KATANA_API_LOCATION}/include)
set(KATANA_API_SOURCE_DIR ${KATANA_API_LOCATION}/src)

#maya
set(MAYA_LOCATION ${LOCAL_LIB}/devkit/maya2017_linux/devkitBase)
set(MAYA_tbb_LIBRARY ${LOCAL_LIB}/tbb44/lib/intel64/gcc4.4/libtbb.so)
set(MAYA_BASE_DIR /mnt/usr/autodesk/maya2017)
set(MAYA_cgGL_LIBRARY ${MAYA_BASE_DIR}/lib/libCgGL.so)
set(MAYA_cg_LIBRARY ${MAYA_BASE_DIR}/lib/libCg.so)

#alembic
set(ALEMBIC_LOCATION ${LOCAL_LIB}/Alembic-1.6.0)
set(ALEMBIC_ROOT ${ALEMBIC_LOCATION})
set(ALEMBIC_INCLUDE_DIR ${ALEMBIC_LOCATION}/include)
set(ALEMBIC_LIBRARY_DIR ${ALEMBIC_LOCATION}/lib)
set(ALEMBIC_LIBRARY ${ALEMBIC_LOCATION}/lib/libAlembic.so)

#hdf5
set(HDF5_LOCATION ${LOCAL_LIB}/HDF5-1.8.9)
set(HDF5_ROOT ${HDF5_LOCATION})
set(HDF5_DIR ${HDF5_LOCATION}/share/cmake)
set(HDF5_INCLUDE_DIR ${HDF5_LOCATION}/include)
set(HDF5_INCLUDE_DIRS ${HDF5_LOCATION}/include)
set(HDF5_LIBRARIES ${HDF5_LOCATION}/lib)
