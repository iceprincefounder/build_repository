#!/usr/bin/env bash
### Light Chaser Animation Studio USD Build ###

#mkdir /home/xukai/Git/git_repo/USD
cd /home/xukai/Git/git_repox/USD

git checkout v0.8.0

python build_scripts/build_usd.py /mnt/work/software/develop/dependences/usd_libs/USD \
		--inst /mnt/work/software/develop/dependences/usd_libs \
		--src /home/xukai/Git/build_repo/usd_v080/src \
		--build /home/xukai/Git/build_repo/usd_v080/build
