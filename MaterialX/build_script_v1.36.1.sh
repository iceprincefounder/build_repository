#!/usr/bin/env bash
# CentOS 7 with gcc 4.8.5 and python 2.7

export MateX_PATH=/home/xukai/GitRepo/git_hub/MaterialX
export BUILD_PATH=/home/xukai/GitRepo/build_repo/MaterialX-v1.36.1
export PREFIX_PATH=$BUILD_PATH/v1.36.1

if [ ! -d ${BUILD_PATH} ]; then
      mkdir ${BUILD_PATH}
fi

cd ${MateX_PATH}
git stash;git checkout v1.36.1

cd ${BUILD_PATH}
cmake ${MateX_PATH} \
      -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_PATH}" \
      -DMATERIALX_BUILD_PYTHON=1 \
      -DMATERIALX_PYTHON_VERSION=2 \
      -DMATERIALX_INSTALL_PYTHON=0 \
      -DMATERIALX_BUILD_DOCS=1

make -j12 install

cd ${MateX_PATH}
git checkout master


echo ${BUILD_PATH}