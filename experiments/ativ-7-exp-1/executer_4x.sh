clapp cluster start cluster-t2-micro-4x

clusterid=$(clapp cluster list | grep id | cut -d' ' -f2)

nodeid=$(clapp node list | grep node-master | cut -d' ' -f3 | cut -d'=' -f2 | cut -d'`' -f2)

echo "Cluster id: "$clusterid

echo "Node id:    "$nodeid 

clapp cluster action $clusterid gromacs run --nodes $nodeid

clapp cluster action $clusterid gromacs fetch-result --nodes $nodeid

clapp cluster stop $clusterid