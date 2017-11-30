#!/usr/bin/env bash

export ARNOLD_ROOT="/mnt/work/software/arnold/arnold-5.0.1.1"
export REPO_ROOT="/home/xukai/Git/git_repox/alShaders2"
export BUILD_ROOT="/home/xukai/Git/build_repo/alshaders2"
export INSTALL_ROOT="/home/xukai/Git/build_repo/alshaders2/installed"
export KTN_ROOT=""

if [ ! -d ${BUILD_ROOT} ]; then
      mkdir ${BUILD_ROOT}
fi
if [ ! -d ${INSTALL_ROOT} ]; then
      mkdir ${INSTALL_ROOT}
fi

cd ${REPO_ROOT}
git checkout 2.0.0-beta2

cd "/home/xukai/Git/build_repo/alshaders2"
cmake ${REPO_ROOT} \
      -G "Unix Makefiles" \
      -DINSTALL_DIR="${INSTALL_ROOT}" \
      -DARNOLD_ROOT="${ARNOLD_ROOT}"
cd ${REPO_ROOT}
git checkout master

echo -e '\033[0;32m'${BUILD_ROOT}'\033[0m'