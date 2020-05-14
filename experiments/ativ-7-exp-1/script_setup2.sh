for f in ./*.pub; do
	cat $f >> ~/.ssh/authorized_keys
	cat $f >> ~/.ssh/known_hosts
done

