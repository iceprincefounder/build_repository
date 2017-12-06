export KATANA_HOME="/mnt/work/software/katana/katana2.5v5"
export ARNOLD_HOME="/mnt/work/software/arnold/arnold-5.0.1.5"
export SA_COMMON_HOME="/home/xukai/Git/build_repo/ktoa_k2040/solidangle-common"
export OPENEXR_HOME="/mnt/work/software/develop/dependences/open_exr"
export BOOST_HOME="/mnt/work/software/develop/dependences/boost_155"
export OUT_PATH="/home/xukai/Git/build_repo/ktoa_k2040"

cd /home/xukai/Git/git_repox/ktoa
./kbuild \
KATANA_HOME=${KATANA_HOME} \
ARNOLD_HOME=${ARNOLD_HOME} \
SA_COMMON_HOME=${SA_COMMON_HOME} \
OPENEXR_HOME=${OPENEXR_HOME} \
BOOST_HOME=${BOOST_HOME} \
COMPILER=gcc -j 8 install PREFIX=${P_OUT_PATH}