#!/usr/bin/env bash

export DOXYGEN_ROOT=/home/xukai/GitRepo/git_hub/doxygen
export BUILD_PATH=/home/xukai/GitRepo/build_repo/Doxygen-Release_1_8_16
export PREFIX_PATH=$BUILD_PATH/Release_1_8_16

if [ ! -d ${BUILD_PATH} ]; then
      mkdir ${BUILD_PATH}
fi

cd ${DOXYGEN_ROOT}
git stash;git checkout Release_1_8_16

cd ${BUILD_PATH}

cd ${BUILD_PATH}
cmake ${DOXYGEN_ROOT} \
      -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_PATH}"

make -j12 install

cd ${DOXYGEN_ROOT}
git checkout master


echo ${BUILD_PATH}