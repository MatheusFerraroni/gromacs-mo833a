

echo "Limpando dir"
rm -R conf
mkdir conf

echo "Copiando arquivos"
cp ./6LVN.pdb ./conf/6LVN.pdb
cp ./ions.mdp ./conf/ions.mdp

cd conf

echo "Configurando gmx"
echo "#"
echo "#"

gro='../../../build/bin/gmx'

echo '15' | $gro pdb2gmx -f ./6LVN.pdb -o 6LVN_processed.gro -water spce
$gro editconf -f 6LVN_processed.gro -o 6LVN_newbox.gro -c -d 1.0 -bt cubic
$gro solvate -cp 6LVN_newbox.gro -cs spc216.gro -o 6LVN_solv.gro -p topol.top
$gro grompp -f ./ions.mdp -c 6LVN_solv.gro -p topol.top -o ions.tpr
echo '13' | $gro genion -s ions.tpr -o 6LVN_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
$gro grompp -f ./ions.mdp -c 6LVN_solv_ions.gro -p topol.top -o em.tpr



echo "#"
echo "#"
echo "GMX configured"
echo "#"
echo "#"


# $gro mdrun -v -deffnm em 1> gmx.out 2> gmx.err