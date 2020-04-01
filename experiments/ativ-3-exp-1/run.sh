


for i in `seq 1 50`; do ../../build/bin/gmx mdrun -v -deffnm em | grep MO833; done > results.txt