cd /home/xukai/Git/build_repo/build_boost/boost_1_59_0
if [ ! -d ./install ]; then
	mkdir ./install
fi
./bootstrap.sh --prefix=./install
./b2 install
