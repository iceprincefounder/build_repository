#!/usr/bin/env bash

source "/opt/rh/devtoolset-2/enable"
source "/opt/rh/python27/enable"

export MateX_PATH=/home/xukai/Git/git_repox/MaterialX
export BUILD_PATH=/home/xukai/Git/build_repo/MaterialX-v1.35.4
export PREFIX_PATH=/mnt/work/software/develop/materialX/v1.35.4

if [ ! -d ${BUILD_PATH} ]; then
      mkdir ${BUILD_PATH}
fi

cd ${MateX_PATH}
git stash;git checkout v1.35.4

cd ${BUILD_PATH}
cmake ${MateX_PATH} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/opt/rh/python27/root/usr/bin/python2.7" \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_PATH}" \
      -DMATERIALX_BUILD_PYTHON=1 \


cd ${MateX_PATH}
git checkout master


echo ${BUILD_PATH}