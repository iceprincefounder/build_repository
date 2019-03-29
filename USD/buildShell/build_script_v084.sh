#!/usr/bin/env bash
echo ### Light Chaser Animation Studio USD Build ###
export USD_INSTALL=/home/xukai/GitRepo/USD-v0.8.4
export USD_BUILD=/home/xukai/GitRepo/build_repo/USD-v0.8.4-build
export USD_INST_LIB=/home/xukai/GitRepo/build_repo/USD-v0.8.4-lib

if [ ! -d ${USD_INSTALL} ]; then
      mkdir ${USD_INSTALL}
fi
if [ ! -d ${USD_BUILD} ]; then
      mkdir ${USD_BUILD}
fi
if [ ! -d ${USD_INST_LIB} ]; then
      mkdir ${USD_INST_LIB}
fi

cd /home/xukai/GitRepo/build_repo/USD-v0.8.4
python build_scripts/build_usd.py ${USD_INSTALL} \
        --inst ${USD_INST_LIB} \
        --src ${USD_BUILD}/src \
        --build ${USD_BUILD}/build \
        --imaging --no-ptex \
        --alembic --hdf5
        # --docs \
        # --maya --maya-location /mnt/usr/autodesk/maya2017update4 \
        # --katana --katana-api-location /mnt/work/software/katana/katana2.5v5 \
        # --houdini --houdini-location /mnt/usr/hfs16.0.557
#git checkout master