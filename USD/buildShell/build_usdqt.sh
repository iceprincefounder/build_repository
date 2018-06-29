#!/usr/bin/env bash
#git clone https://github.com/AnimalLogic/AL_USDMaya.git
#git checkout 0.23.1
source "/opt/rh/devtoolset-2/enable"
source "/mnt/work/software/develop/dependences/python27/enable"

export USDQT_REPO="/home/xukai/Git/git_repox/usd-qt"
export LCA_USD="/home/xukai/Git/git_repo/usd"
export USD_LIB="/mnt/work/software/develop/dependences/usd_libs"

cd ${USDQT_REPO}
git pull

cd /home/xukai/Git/build_repo/usd-qt

cmake ${USDQT_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/opt/rh/python27/root/usr/bin/python2.7" \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo \
      -DUSD_GENSCHEMA="/home/xukai/Git/git_repo/usd/USD-v081" \
      -DUSD_INCLUDE_DIR="/home/xukai/Git/git_repo/usd/USD-v081/include" \
      -DUSD_LIBRARY_DIR="/home/xukai/Git/git_repo/usd/USD-v081/lib" \
      -DCMAKE_INSTALL_PREFIX="${LCA_USD}/usd-qt" \
      -DTBB_ROOT_DIR="${USD_LIB}" -DTBB_INCLUDE_DIRS="${USD_LIB}/include" -DTBB_LIBRARIES="${USD_LIB}/lib" \
      -DBoost_INCLUDE_DIR="${USD_LIB}/include" \

make -j20