#!/usr/bin/env bash
#git clone https://github.com/AnimalLogic/AL_USDMaya.git
#git checkout 0.23.1
source "/opt/rh/devtoolset-2/enable"
source "/mnt/work/software/develop/dependences/python27/enable"

export ALUM_REPO="/home/xukai/Git/git_repox/AL_USDMaya"
export LCA_USD="/home/xukai/Git/git_repo/usd"
export USD_LIB="/mnt/work/software/develop/dependences/usd_libs"

cd ${ALUM_REPO}
git checkout 0.27.4

cd /home/xukai/Git/build_repo/alum_0274

cmake ${ALUM_REPO} \
      -G "Unix Makefiles" \
      -DCMAKE_C_FLAGS="-std=c++11" \
      -DCMAKE_CXX_FLAGS="-std=c++11" \
      -DCMAKE_C_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/gcc" \
      -DCMAKE_CXX_COMPILER="/opt/rh/devtoolset-2/root/usr/bin/g++" \
      -DPYTHON_EXECUTABLE="/opt/rh/python27/root/usr/bin/python2.7" \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo \
      -DBUILD_USDMAYA_SCHEMAS=1 \
      -DBUILD_USDMAYA_TRANSLATORS=1 \
      -DVALIDATE_GENERATED_SCHEMAS=0 \
      -DUSD_CONFIG_FILE="/mnt/work/software/develop/usd/USD-v083/pxrConfig.cmake" \
      -DMAYA_LOCATION="/mnt/usr/autodesk/maya2017update4" \
      -DCMAKE_PREFIX_PATH="/mnt/usr/autodesk/maya2017update4/lib/cmake" \
      -DCMAKE_INSTALL_PREFIX="${LCA_USD}/AL_USDMaya-0274" \
      -DCMAKE_MODULE_PATH="${ALUM_REPO}/cmake/modules" \
      -DBOOST_ROOT="${USD_LIB}" \
      -DOPENEXR_LOCATION="${USD_LIB}" \
      -DOPENGL_gl_LIBRARY="${USD_LIB}" \
      -DGLEW_LOCATION="${USD_LIB}" \
      -DGTEST_ROOT="/home/xukai/Git/build_repo/googletest/install" \
      -DQt5Gui_DIR="/opt/Qt5.6.1/5.6/gcc_64/lib/cmake/Qt5Gui" \

make -j20 install