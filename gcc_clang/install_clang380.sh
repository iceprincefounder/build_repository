echo copy files ...
if [ ! -d ~/sourceInstallations ]; then
	mkdir ~/sourceInstallations
fi
cd ~/sourceInstallations
svn co http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_360/final llvm_RELEASE_380
cd llvm_RELEASE_380/tools
svn co http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_380/final clang
cd ../projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/tags/RELEASE_380/final compiler-rt
svn co http://llvm.org/svn/llvm-project/libcxx/tags/RELEASE_380/final libcxx
svn co http://llvm.org/svn/llvm-project/libcxxabi/tags/RELEASE_380/final libcxxabi
cd ..
svn update
echo build ...
if [ ! -d ../llvm_RELEASE_380_build ]; then
	mkdir ../llvm_RELEASE_380_build
fi
cd ../llvm_RELEASE_380_build
source /opt/rh/devtoolset-2/enable
source /opt/rh/python27/enable
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/opt/rh/devtoolset-2/root/usr/bin/gcc -DCMAKE_CXX_COMPILER=/opt/rh/devtoolset-2/root/usr/bin/g++ ../llvm_RELEASE_380
#make -j16
#make install
echo success