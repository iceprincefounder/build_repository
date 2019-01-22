#!/usr/bin/env bash

source "/opt/rh/devtoolset-2/enable"
source "/opt/rh/python27/enable"

export OPENEXR_PATH=/home/xukai/Git/git_repox/openexr
export BUILD_PATH=/home/xukai/Git/build_repo/OpenEXR-2.2.0
export PREFIX_PATH=/home/xukai/Git/build_repo/OpenEXR-2.2.0/install

if [ ! -d ${BUILD_PATH} ]; then
      mkdir ${BUILD_PATH}
fi

cd ${OPENEXR_PATH}
git stash;git checkout v2.2.0

cd ${BUILD_PATH}
cmake ${OPENEXR_PATH} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/opt/rh/python27/root/usr/bin/python2.7" \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_PATH}" \
      -DOPENEXR_BUILD_PYTHON_LIBS=0 \

cd ${OPENEXR_PATH}
git checkout master


echo ${BUILD_PATH}