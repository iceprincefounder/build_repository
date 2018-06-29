#!/usr/bin/env bash

#source /opt/rh/devtoolset-2/enable
#source /mnt/work/software/develop/dependences/python27/enable



export USD_ROOT="/mnt/work/software/develop/usd"
export MAYA_LIB="/mnt/usr/autodesk/maya2017update4"
export KATANA_LIB="/mnt/work/software/katana/katana2.5v5/plugin_apis"
export HOUDINI_LIB="/mnt/usr/hfs16.0.557"
export DEPS_LIB="/mnt/work/software/develop/dependences"
export USD_REPO="/home/xukai/Git/git_repox/USD"
export USD_INSTALL="/home/xukai/Git/git_repo/usd/USD-v082"
export USD_BUILD="/home/xukai/Git/build_repo/usd_v082"

if [ ! -d ${USD_INSTALL} ]; then
      mkdir ${USD_INSTALL}
fi


if [ ! -d ${USD_BUILD} ]; then
      mkdir ${USD_BUILD}
fi

cd ${USD_REPO}
git checkout v0.8.2

cd ${USD_BUILD}
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
      -DPXR_ENABLE_HDF5_SUPPORT=1 \
      -DPXR_ENABLE_PTEX_SUPPORT=0 \
      -DALEMBIC_DIR=${DEPS_LIB}/Alembic-1.6.0 \
      -DHDF5_ROOT=${DEPS_LIB}/HDF5-1.8.9 \
      -DOPENEXR_ROOT_DIR=${DEPS_LIB}/OpenEXR-2.2.0 \
      -DOPENEXR_INCLUDE_DIR=${DEPS_LIB}/OpenEXR-2.2.0/include -DOPENEXR_LIBRARY_DIR=${DEPS_LIB}/OpenEXR-2.2.0/lib \
      -DDOUBLE_CONVERSION_DIR=${DEPS_LIB}/usd_inst \
      -DGLEW_LOCATION=${DEPS_LIB}/usd_inst \
      -DOIIO_LOCATION=${DEPS_LIB}/usd_inst \
      -DOPENSUBDIV_ROOT_DIR=${DEPS_LIB}/usd_inst \
      -DTBB_ROOT_DIR=${DEPS_LIB}/usd_inst \
      -DTBB_LIBRARY=${DEPS_LIB}/usd_inst/lib \
      -DBoost_INCLUDE_DIR=${DEPS_LIB}/usd_inst/include -DBoost_LIBRARY_DIR=${DEPS_LIB}/usd_inst/lib \
      -DMAYA_BASE_DIR=${MAYA_LIB} \
      -DMAYA_tbb_LIBRARY=${DEPS_LIB}/usd_inst/lib/libtbb.so \
      -DKATANA_API_LOCATION=${KATANA_LIB} \
      -DKATANA_API_BASE_DIR=${KATANA_LIB} \
      -DKATANA_API_INCLUDE_DIR=${KATANA_LIB}/include \
      -DKATANA_API_SOURCE_DIR=${KATANA_LIB}/src \
      -DHOUDINI_ROOT=${HOUDINI_LIB} \

cd ${USD_BUILD}
make -j 20 install

cd ${USD_REPO}
git checkout master