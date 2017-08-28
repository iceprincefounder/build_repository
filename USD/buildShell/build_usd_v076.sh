#!/usr/bin/env bash

#git clone https://github.com/LightChaserAnimationStudio/USD.git
#git checkout v0.7.6

export USD_ROOT="/mnt/work/software/develop/usd"
export MAYA_LIB="/mnt/usr/autodesk/maya2017update3"
export KATANA_LIB="/mnt/work/software/katana/katana2.5v5/plugin_apis"
export DEPS_LIB="/mnt/work/software/develop/dependences"
export USD_REPO="/home/xukai/Git/git/USD"
export USD_INSTALL="/home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v076"

cd "/home/xukai/usd_build"
cmake ${USD_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/opt/rh/python27/root/usr/bin/python2.7" \
      -DCMAKE_INSTALL_PREFIX="${USD_INSTALL}" \
      -DPXR_INSTALL_LOCATION="${USD_INSTALL}" \
      -DPXR_VALIDATE_GENERATED_CODE=1 \
      -DPXR_BUILD_MAYA_PLUGIN=1 \
      -DPXR_BUILD_KATANA_PLUGIN=1 \
      -DPXR_BUILD_ALEMBIC_PLUGIN=1 \
      -DALEMBIC_DIR=${DEPS_LIB}/Alembic-1.6.0 \
      -DDOUBLE_CONVERSION_DIR=${DEPS_LIB}/double_conversion \
      -DGLEW_LOCATION=${DEPS_LIB}/glew \
      -DOIIO_LOCATION=${DEPS_LIB}/oiio \
      -DOPENEXR_ROOT_DIR=${DEPS_LIB}/open_exr \
      -DOPENSUBDIV_ROOT_DIR=${DEPS_LIB}/open_subd \
      -DPTEX_LOCATION=${DEPS_LIB}/ptex \
      -DFLEX_ROOT=${DEPS_LIB}/flex \
      -DFLEX_EXECUTABLE=${DEPS_LIB}/flex/bin/flex \
      -DHDF5_ROOT=${DEPS_LIB}/HDF5-1.8.9 \
      -DTBB_ROOT_DIR=${DEPS_LIB}/tbb44 \
      -DBoost_INCLUDE_DIR=${DEPS_LIB}/boost_155/include -DBoost_LIBRARY_DIR=${DEPS_LIB}/boost_155/lib \
      -DMAYA_BASE_DIR=${MAYA_LIB} \
      -DMAYA_cgGL_LIBRARY=${MAYA_LIB}/lib/libCgGL.so \
      -DMAYA_cg_LIBRARY=${MAYA_LIB}/lib/libCg.so \
      -DMAYA_tbb_LIBRARY=${DEPS_LIB}/tbb44/lib/intel64/gcc4.4/libtbb.so \
      -DMAYA_LOCATION=${DEPS_LIB}/devkit/maya2017_linux_update3/devkitBase \
      -DKATANA_API_LOCATION=${KATANA_LIB} \
      -DKATANA_API_BASE_DIR=${KATANA_LIB} \
      -DKATANA_API_INCLUDE_DIR=${KATANA_LIB}/include \
      -DKATANA_API_SOURCE_DIR=${KATANA_LIB}/src \
      # -DPYSIDE_BIN_DIR="C:\Python27\Scripts" ^
