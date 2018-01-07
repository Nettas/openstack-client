
openstack_user_name = "kubernetes"
openstack_tenant_name = "kubernetes"
openstack_tenant_id = "c7f9e2cd81974ba48d7e1df65b0a42f0"
openstack_password = "rbaiwa"
openstack_auth_url = "http://192.168.1.30:5000/v2.0"
openstack_availability_zone = "nova"
openstack_region = "RegionOne"
openstack_availability_zone = "nova"
openstack_region = "RegionOne"
openstack_keypair = "demokey"
openstack_external_net = "ext-net"
openstack_internal_net = "kubernetes-host-net"
num_app_nodes = "5"
num_master_nodes = "3"
dns_domain = "ocp3.jyiii.org."


# update these to the image IDs you want to use in your infra
master_image_id = "3eeba7bf-295b-41b2-82fe-6e47d8d50dba"
master_instance_size = "m1.medium"

node_image_id = "3eeba7bf-295b-41b2-82fe-6e47d8d50dba"
node_instance_size = "m1.medium"


