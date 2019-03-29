#!/usr/bin/env bash

export MAYA_LIB="/mnt/usr/autodesk/maya2017update4"
export KATANA_LIB="/mnt/work/software/katana/katana2.5v5/plugin_apis"
export HOUDINI_LIB="/mnt/work/software/houdini/houdini16.0.705"

export USD_REPO="/home/xukai/GitRepo/build_repo/USD-v0.8.4"

export USD_INSTALL="/home/xukai/GitRepo/USD-v084"
export USD_BUILD="/home/xukai/GitRepo/build_repo/USD-v084-build"
export USD_DEPS_LIB="/home/xukai/GitRepo/build_repo/USD-v0.8.4-lib"

# export PYTHONPATH="$PYTHONPATH:/mnt/work/software/centos7/lib64/python2.7/site-packages"

if [ ! -d ${USD_BUILD} ]; then
      mkdir ${USD_BUILD}
else
      rm -rf ${USD_BUILD}
      mkdir ${USD_BUILD}
fi

cd ${USD_BUILD}
cmake ${USD_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/usr/bin/python2.7" \
      -DPYTHON_LIBRARY="/usr/lib/python2.7/config/libpython2.7.so" \
      -DPYTHON_INCLUDE_DIR="/usr/include/python2.7" \
      -DCMAKE_INSTALL_PREFIX="${USD_INSTALL}" \
      -DPXR_INSTALL_LOCATION="${USD_INSTALL}" \
      -DPXR_VALIDATE_GENERATED_CODE=0 \
      -DPXR_BUILD_MAYA_PLUGIN=1 \
      -DPXR_BUILD_KATANA_PLUGIN=1 \
      -DPXR_BUILD_HOUDINI_PLUGIN=1 \
      -DPXR_BUILD_ALEMBIC_PLUGIN=1 \
      -DPXR_ENABLE_HDF5_SUPPORT=0 \
      -DPXR_ENABLE_PTEX_SUPPORT=0 \
      -DALEMBIC_DIR=${USD_DEPS_LIB} \
      -DALEMBIC_LIBRARY_DIR=${USD_DEPS_LIB}/lib \
      -DHDF5_ROOT=${USD_DEPS_LIB} \
      -DBOOST_ROOT=${USD_DEPS_LIB} \
      -DBoost_INCLUDE_DIR=${USD_DEPS_LIB}/include -DBoost_LIBRARY_DIR=${USD_DEPS_LIB}/lib \
      # -DOPENEXR_ROOT_DIR=${USD_DEPS_LIB} \
      # -DOPENEXR_INCLUDE_DIR=${USD_DEPS_LIB}/include -DOPENEXR_LIBRARIES=${USD_DEPS_LIB}/lib \
      -DTBB_ROOT_DIR=${USD_DEPS_LIB} \
      -DTBB_INCLUDE_DIRS=${USD_DEPS_LIB}/include \
      -DGLEW_LOCATION=${USD_DEPS_LIB} \
      -DOIIO_LOCATION=${USD_DEPS_LIB} \
      -DOPENSUBDIV_ROOT_DIR=${USD_DEPS_LIB} \
      -DTBB_ROOT_DIR=${USD_DEPS_LIB} -DTBB_LIBRARY=${USD_DEPS_LIB}/lib \
      -DMAYA_BASE_DIR=${MAYA_LIB} \
      -DMAYA_cgGL_LIBRARY=${MAYA_LIB}/lib/libCgGL.so \
      -DMAYA_cg_LIBRARY=${MAYA_LIB}/lib/libCg.so \
      -DMAYA_tbb_LIBRARY=${USD_DEPS_LIB}/lib/libtbb.so \
      -DMAYA_LOCATION=${MAYA_LIB} \
      -DKATANA_API_BASE_DIR=${KATANA_LIB} \
      -DKATANA_API_INCLUDE_DIR=${KATANA_LIB}/include \
      -DKATANA_API_SOURCE_DIR=${KATANA_LIB}/src \
      -DHOUDINI_ROOT=${HOUDINI_LIB}
