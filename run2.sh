sudo docker run -it -v $PWD/.ssh:/root/.ssh:Z \
	     -v $PWD/scripts:/opt/scripts:Z \
	     -v $PWD/scripts/openshift-3.7-openrc.sh:/root/.config/openstack/openshift-3.7-openrc.sh:Z \
	          redhatcop/control-host-openstack bash
