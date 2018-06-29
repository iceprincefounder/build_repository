#!/usr/bin/env bash

#source /opt/rh/devtoolset-2/enable
#source /mnt/work/software/develop/dependences/python27/enable

#git clone https://github.com/LightChaserAnimationStudio/USD.git
#git checkout v0.8.0

export USD_ROOT="/mnt/work/software/develop/usd"
export MAYA_LIB="/mnt/usr/autodesk/maya2017update3"
export KATANA_LIB="/mnt/work/software/katana/katana2.5v5/plugin_apis"
export HOUDINI_LIB="/mnt/usr/hfs16.0.557"
export DEPS_LIB="/mnt/work/software/develop/dependences"
export USD_REPO="/home/xukai/Git/git_repox/USD"
export USD_INSTALL="/home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v081s"

if [ ! -d ${USD_INSTALL} ]; then
      mkdir ${USD_INSTALL}
fi


if [ ! -d /home/xukai/Git/build_repo/usd_v081s ]; then
      mkdir /home/xukai/Git/build_repo/usd_v081s
fi

cd ${USD_REPO}
git checkout v0.8.1

cd "/home/xukai/Git/build_repo/usd_v081s"
cmake ${USD_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/mnt/work/software/develop/dependences/python27/root/usr/bin/python2.7" \
      -DCMAKE_INSTALL_PREFIX="${USD_INSTALL}" \
      -DPXR_INSTALL_LOCATION="${USD_INSTALL}" \
      -DPXR_VALIDATE_GENERATED_CODE=0 \
      -DPXR_BUILD_MAYA_PLUGIN=1 \
      -DPXR_BUILD_KATANA_PLUGIN=1 \
      -DPXR_BUILD_HOUDINI_PLUGIN=1 \
      -DPXR_BUILD_ALEMBIC_PLUGIN=1 \
      -DPXR_ENABLE_HDF5_SUPPORT=0 \
      -DPXR_ENABLE_PTEX_SUPPORT=0 \
      -DALEMBIC_DIR=${DEPS_LIB}/usd_inst \
      -DDOUBLE_CONVERSION_DIR=${DEPS_LIB}/usd_inst \
      -DGLEW_LOCATION=${DEPS_LIB}/usd_inst \
      -DOIIO_LOCATION=${DEPS_LIB}/usd_inst \
      -DOPENEXR_ROOT_DIR=${DEPS_LIB}/usd_inst \
      -DOPENSUBDIV_ROOT_DIR=${DEPS_LIB}/usd_inst \
      -DTBB_ROOT_DIR=${DEPS_LIB}/usd_inst \
      -DTBB_LIBRARY=${DEPS_LIB}/usd_inst/lib \
      -DBoost_INCLUDE_DIR=${DEPS_LIB}/usd_inst/include -DBoost_LIBRARY_DIR=${DEPS_LIB}/usd_inst/lib \
      -DMAYA_BASE_DIR=${MAYA_LIB} \
      -DMAYA_cgGL_LIBRARY=${MAYA_LIB}/lib/libCgGL.so \
      -DMAYA_cg_LIBRARY=${MAYA_LIB}/lib/libCg.so \
      -DMAYA_tbb_LIBRARY=${DEPS_LIB}/usd_inst/lib/libtbb.so \
      -DMAYA_LOCATION=${DEPS_LIB}/devkit/maya2017_linux_update3/devkitBase \
      -DKATANA_API_LOCATION=${KATANA_LIB} \
      -DKATANA_API_BASE_DIR=${KATANA_LIB} \
      -DKATANA_API_INCLUDE_DIR=${KATANA_LIB}/include \
      -DKATANA_API_SOURCE_DIR=${KATANA_LIB}/src \
      -DHOUDINI_ROOT=${HOUDINI_LIB} \
      # -DPYSIDE_BIN_DIR="C:\Python27\Scripts" ^

cd ${USD_REPO}
git checkout master