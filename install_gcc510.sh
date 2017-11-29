echo "Start ..."
if [ ! -d ~/sourceInstallations ]; then
	mkdir ~/sourceInstallations
fi
cd ~/sourceInstallations
svn co svn://gcc.gnu.org/svn/gcc/tags/gcc_5_1_0_release/
cd gcc_5_1_0_release/
./contrib/download_prerequisites
SWAP=/tmp/swap
dd if=/dev/zero of=$SWAP bs=1M count=500
mkswap $SWAP
swapon $SWAP
cd ..
if [ ! -d gcc_5_1_0_release_build/ ]; then
	mkdir gcc_5_1_0_release_build/
fi
cd gcc_5_1_0_release_build/
../gcc_5_1_0_release/configure --disable-multilib
make -j16
#make install
echo "Success!"