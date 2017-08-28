
#~ git clone https://github.com/compso/bb_alembic.git
#~ git checkout v2.0.0
export REPO_HOME=/home/xukai/Git/git_origin/bb_alembic

cd /home/xukai/Git/build_repo/bb_alembic

cmake ${REPO_HOME} \
      -G "Unix Makefiles" \
      -DCMAKE_INSTALL_PREFIX="/home/xukai/Git/build_repo/bb_alembic/dist" \
      -DINSTALL_DIR="/home/xukai/Git/build_repo/bb_alembic/dist" \
      -DILMBASE_ROOT="/mnt/work/software/develop/dependences/IlmBase-2.2.0" \
      -DBOOST_ROOT="/home/xukai/Git/build_repo/boost_1_55_0/boost_1_55_0/dist" \
      -DBOOST_LIBRARY_DIR="/home/xukai/Git/build_repo/boost_1_55_0/boost_1_55_0/dist/lib" \
      -DALEMBIC_DIR="/mnt/work/software/develop/dependences/Alembic-1.7.0" \
      -DMTOA_ROOT="/home/xukai/Git/git_origin/mtoa" \
      -DMAYA_ROOT="/mnt/usr/autodesk/maya2017update3" \
      -DARNOLD_ROOT="/mnt/work/software/arnold/arnold-5.0.1.1" \