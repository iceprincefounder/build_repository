#!/usr/bin/env bash

export REPO_ROOT="/home/xukai/Git/git_repox/glfw"
export BUILD_ROOT="/home/xukai/Git/build_repo/glfw"
export INSTALL_ROOT="/home/xukai/Git/build_repo/glfw/install"

if [ ! -d ${BUILD_ROOT} ]; then
      mkdir ${BUILD_ROOT}
fi

cd ${REPO_ROOT}
git checkout 3.1

cd ${BUILD_ROOT}
cmake ${REPO_ROOT} \
      -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX="${INSTALL_ROOT}" \

#cd ${REPO_ROOT}
#git checkout master

echo "----"
echo -e '\033[0;32m'${BUILD_ROOT}'\033[0m'