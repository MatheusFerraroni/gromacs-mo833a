
echo "iniciando" > log_geral.txt

sudo apt-get update

echo "update ok" >> log_geral.txt

sudo apt-get install -y wget make gcc libgfortran3 \
sysstat libibnetdisc-dev openmpi-bin libopenmpi-dev \
libhdf5-openmpi-dev gfortran build-essential git

echo "apt-get install ok" >> log_geral.txt

# wget https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2-Linux-x86_64.sh
# chmod +x cmake-3.17.2-Linux-x86_64.sh
# bash cmake-3.17.2-Linux-x86_64.sh --skip-license
# sudo ln -s /home/ubuntu/bin/* /usr/local/bin


# git clone --single-branch --branch ativi-7-exp-1 https://github.com/MatheusFerraroni/gromacs-mo833a.git
# cd gromacs-mo833a/

# mkdir build
# cd build

# cmake .. -DGMX_BUILD_OWN_FFTW=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DGMX_MPI=on 1> cmake.out 2> cmake.outerr
# make -i 1> make_res.out 2> make_res.outerr





echo "all complete" >> log_geral.txt
