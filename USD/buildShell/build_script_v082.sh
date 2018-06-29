#!/usr/bin/env bash
echo ### Light Chaser Animation Studio USD Build ###
export USD_INSTALL=/mnt/work/software/develop/dependences/usd_inst_082/USD
export USD_BUILD=/home/xukai/Git/build_repo/usd_v082
export USD_INST=/mnt/work/software/develop/dependences/usd_inst_082

if [ ! -d ${USD_INSTALL} ]; then
      mkdir ${USD_INSTALL}
fi
if [ ! -d ${USD_BUILD} ]; then
      mkdir ${USD_BUILD}
fi
if [ ! -d ${USD_INST} ]; then
      mkdir ${USD_INST}
fi

cd /home/xukai/Git/git_repox/USD
git checkout v0.8.2
python build_scripts/build_usd.py ${USD_INSTALL} \
		--inst ${USD_INST} \
		--src ${USD_BUILD}/src \
		--build ${USD_BUILD}/build \
		--imaging --no-ptex \
		--embree \
		--alembic --hdf5 \
		--maya --maya-location /mnt/usr/autodesk/maya2017update4 \
		--katana --katana-api-location /mnt/work/software/katana/katana2.5v5 \
		--houdini --houdini-location /mnt/usr/hfs16.0.557
git checkout master