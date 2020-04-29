
rm -R conf
cd conf

wget https://files.rcsb.org/view/6LVN.pdb

wget https://raw.githubusercontent.com/MatheusFerraroni/gromacs-mo833a/ativ-3-exp-1/experiments/ativ-3-exp-1/ions.mdp


echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"

gro='../../build/bin/gmx_mpi'

echo '15' | $gro pdb2gmx -f ./6LVN.pdb -o 6LVN_processed.gro -water spce
$gro editconf -f 6LVN_processed.gro -o 6LVN_newbox.gro -c -d 1.0 -bt cubic
$gro solvate -cp 6LVN_newbox.gro -cs spc216.gro -o 6LVN_solv.gro -p topol.top
$gro grompp -f ./ions.mdp -c 6LVN_solv.gro -p topol.top -o ions.tpr
echo '13' | $gro genion -s ions.tpr -o 6LVN_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
$gro grompp -f ./ions.mdp -c 6LVN_solv_ions.gro -p topol.top -o em.tpr