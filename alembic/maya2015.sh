#!/usr/bin/env bash

source "/opt/rh/devtoolset-2/enable"

cd /home/xukai/Git/git_repox/alembic
git checkout 1.7.7

ALEMBIC_REPO=/home/xukai/Git/git_repox/alembic
ALEMBIC_BUILD=/home/xukai/Git/build_repo/alembic_build/maya2015
ALEMBIC_INST=/home/xukai/Git/build_repo/alembic_build/maya2015/installed
if [ ! -d ${ALEMBIC_BUILD} ]; then
      mkdir ${ALEMBIC_BUILD}
else
    rm -rf ${ALEMBIC_BUILD}
    mkdir ${ALEMBIC_BUILD}
fi


cd ${ALEMBIC_BUILD}
cmake ${ALEMBIC_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DCMAKE_INSTALL_PREFIX="${ALEMBIC_INST}" \
      -DUSE_MAYA=ON \
      -DMAYA_ROOT="/mnt/usr/autodesk/maya2015" \

make -j20 install

cd /home/xukai/Git/git_repox/alembic
git checkout master

