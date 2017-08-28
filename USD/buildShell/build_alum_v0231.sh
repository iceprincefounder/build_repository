#!/usr/bin/env bash
#git clone https://github.com/AnimalLogic/AL_USDMaya.git
#git checkout 0.23.1
export ALUM_REPO="/home/xukai/Git/git_origin/AL_USDMaya"
export LCA_USD="/home/xukai/Git/git_repo/usd/lca_usd_house"
export LCA_DEPS="/mnt/work/software/develop/dependences"
cd /home/xukai/Git/build_repo/alum_v0231
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
      -DCMAKE_INSTALL_PREFIX="${LCA_USD}/alum_centos_v0231" \
      -DCMAKE_MODULE_PATH="${ALUM_REPO}/cmake/modules" \
      -DBOOST_ROOT="${LCA_DEPS}/usd_inst" \
      -DMAYA_LOCATION="/mnt/usr/autodesk/maya2017update3" \
      -DOPENEXR_LOCATION="${LCA_DEPS}/usd_inst" \
      -DOPENGL_gl_LIBRARY="${LCA_DEPS}/usd_inst" \
      -DGLEW_LOCATION="${LCA_DEPS}/usd_inst" \
      -DUSD_CONFIG_FILE="/home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v080s/pxrConfig.cmake" \
      -DGTEST_ROOT="/home/xukai/Git/build_repo/googletest/install" \
      -DCMAKE_PREFIX_PATH="/mnt/usr/autodesk/maya2017update3/lib/cmake" \
      -DQt5Gui_DIR="/opt/Qt5.6.1/5.6/gcc_64/lib/cmake/Qt5Gui" \
