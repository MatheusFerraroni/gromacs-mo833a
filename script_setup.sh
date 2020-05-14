
echo "iniciando" > log_geral.txt

sudo apt-get update

echo "update ok" >> log_geral.txt

sudo apt-get install -y wget make gcc libgfortran3 \
sysstat libibnetdisc-dev openmpi-bin libopenmpi-dev \
libhdf5-openmpi-dev gfortran build-essential git

echo "apt-get install ok" >> log_geral.txt

wget https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2-Linux-x86_64.sh


echo "pegou instalador do cmake" >> log_geral.txt


chmod +x cmake-3.17.2-Linux-x86_64.sh
echo "permissao no arquivo para instalar cmake" >> log_geral.txt
bash cmake-3.17.2-Linux-x86_64.sh --skip-license
echo "instalou cmake" >> log_geral.txt
sudo ln -s /home/ubuntu/bin/* /usr/local/bin
echo "criou link cmake" >> log_geral.txt


git clone --single-branch --branch ativi-7-exp-1 https://github.com/MatheusFerraroni/gromacs-mo833a.git
echo "gromacs clonado" >> log_geral.txt
cd gromacs-mo833a/

mkdir build
cd build
echo "na pasta do gromacs e pasta build criada" >> log_geral.txt

echo "vai executar o cmake" >> log_geral.txt
cmake .. -DGMX_BUILD_OWN_FFTW=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DGMX_MPI=on 1> cmake.out 2> cmake.outerr

echo "cmake executado e vai chamar o make" >> log_geral.txt

make -i 1> make_res.out 2> make_res.outerr

echo "make pronto" >> log_geral.txt




echo "all complete" >> log_geral.txt
