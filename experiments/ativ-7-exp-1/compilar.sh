
mkdir build
cd ../../build/


# cmake .. -DGMX_BUILD_OWN_FFTW=ON -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx -DGMX_MPI=on
cmake .. -DGMX_BUILD_OWN_FFTW=ON
make 