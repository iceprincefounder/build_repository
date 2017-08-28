#!/usr/bin/env bash
### Light Chaser Animation Studio USD Build ###

#mkdir /home/xukai/Git/git_repo/USD
cd /home/xukai/Git/git_repo/USD
#git clone https://github.com/LightChaserAnimationStudio/USD.git
#git checkout v0.8.0
python build_scripts/build_usd.py /home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v080 \
		--inst /mnt/work/software/develop/dependences/usd_inst \
		--src /home/xukai/Git/build_repo/usd_v080/src \
		--build /home/xukai/Git/build_repo/usd_v080/build \
		--alembic \
		--maya --maya-location /mnt/usr/autodesk/maya2017update3 \
		--katana --katana-api-location /mnt/work/software/katana/katana2.5v5 \

##################################################################################################
# Building with settings:
#   USD source directory          /home/xukai/Git/git_repo/USD
#   USD install directory         /home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v080
#   3rd-party source directory    /home/xukai/Git/build_repo/usd_v080/src
#   3rd-party install directory   /mnt/work/software/develop/dependences/usd_inst
#   Build directory               /home/xukai/Git/git_repo/usd/lca_usd_house/usd_centos_v080/build

#   Building                      Shared libraries
#     Imaging                     On
#       Ptex support:             Off
#     UsdImaging                  On
#     Documentation               Off
#     Tests                       Off
#     Alembic Plugin              On
#       HDF5 support:             Off
#     Maya Plugin                 On
#     Katana Plugin               On
#     Houdini Plugin              Off
