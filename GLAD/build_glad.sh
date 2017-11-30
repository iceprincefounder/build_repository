#!/usr/bin/env bash

export REPO_ROOT="/home/xukai/Git/git_repox/glad"
export BUILD_ROOT="/home/xukai/Git/build_repo/glad"
export INSTALL_ROOT="${BUILD_ROOT}/install"

if [ ! -d ${BUILD_ROOT} ]; then
      mkdir ${BUILD_ROOT}
fi

cd ${REPO_ROOT}
git checkout v0.1.14a0

cd ${BUILD_ROOT}
cmake ${REPO_ROOT} \
      -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX="${INSTALL_ROOT}" \

#cd ${REPO_ROOT}
#git checkout master

echo "----"
echo -e '\033[0;32m'${BUILD_ROOT}'\033[0m'