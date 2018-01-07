variable "openstack_user_name" {}
variable "openstack_tenant_name" {}
variable "openstack_tenant_id" {}
variable "openstack_password" {}
variable "openstack_auth_url" {}
variable "openstack_availability_zone" {}
variable "openstack_region" {}
variable "openstack_keypair" {}
variable "num_app_nodes" { default = "2"}
variable "num_master_nodes" { default = "3"}

variable "master_image_id" {}
variable "master_instance_size" {}
variable "node_image_id" {}
variable "node_instance_size" {}

variable "openstack_external_net" {}
variable "openstack_internal_net" {}


provider "openstack" {
    user_name  = "${var.openstack_user_name}"
    tenant_name = "${var.openstack_tenant_name}"
    tenant_id = "${var.openstack_tenant_id}"
    password  = "${var.openstack_password}"
    auth_url  = "${var.openstack_auth_url}"
    endpoint_type = "public"
}


resource "openstack_networking_network_v2" "openstack_internal_net" {
  name           = "kubernetes-host-net"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_1" {
  network_id = "${openstack_networking_network_v2.openstack_internal_net.id}"
  cidr       = "172.22.4.0/24"
  dns_nameservers = ["8.8.8.8"]
  ip_version = 4
}


resource "openstack_networking_router_v2" "router_1" {
  name             = "my_router"
  external_gateway = "dfcc8284-42e7-4eeb-8593-1a650e1073e0"
}

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = "${openstack_networking_router_v2.router_1.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_1.id}"
}

resource "openstack_compute_keypair_v2" "demokey" {
  name       = "demokey"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}




resource "openstack_networking_floatingip_v2" "kube-app-node-floatip" {
  count = "${var.num_app_nodes}"
  region = "${var.openstack_region}"
  pool = "${var.openstack_external_net}"
}

resource "openstack_networking_floatingip_v2" "kube-master-node-floatip" {
  count = "${var.num_master_nodes}"
  region = "${var.openstack_region}"
  pool = "${var.openstack_external_net}"
}


resource "openstack_compute_floatingip_associate_v2" "kube-master-node-floatip" {
  count = "${var.num_master_nodes}"
  floating_ip = "${element(openstack_networking_floatingip_v2.kube-master-node-floatip.*.address, count.index)}"
  instance_id = "${element(openstack_compute_instance_v2.kube-master-node.*.id, count.index)}"

}

resource "openstack_compute_floatingip_associate_v2" "kube-app-node-floatip" {
  count = "${var.num_app_nodes}"
  floating_ip = "${element(openstack_networking_floatingip_v2.kube-app-node-floatip.*.address, count.index)}"
  instance_id = "${element(openstack_compute_instance_v2.kube-app-node.*.id, count.index)}"

}



resource "openstack_blockstorage_volume_v1" "app-node-docker-vol" {
  count = "${var.num_app_nodes}"

  name = "${format("app-node-docker-vol-%d", count.index)}"
  size = 75
}


resource "openstack_blockstorage_volume_v1" "master-node-docker-vol" {
  count = "${var.num_master_nodes}"

  name = "${format("master-node-docker-vol-%d", count.index)}"
  size = 75
}



resource "openstack_compute_instance_v2" "kube-app-node" {
  count = "${var.num_app_nodes}"
  name = "${format("kube-app-node-%d", count.index)}"

  region = "${var.openstack_region}"
  image_id = "${var.node_image_id}"
  flavor_name = "${var.node_instance_size}"
  availability_zone = "${var.openstack_availability_zone}"
  key_pair = "${var.openstack_keypair}"
  security_groups = ["default", "kube-sec-group"]
  
  metadata {
    ssh_user = "cloud-user"
  }

  network {
    uuid = "${openstack_networking_network_v2.openstack_internal_net.id}"
  }
      

}

resource "openstack_compute_volume_attach_v2" "app-node-docker-vol" {
  instance_id = "${element(openstack_compute_instance_v2.kube-app-node.*.id, count.index)}"
  volume_id   = "${element(openstack_blockstorage_volume_v1.app-node-docker-vol.*.id, count.index)}"
}


resource "openstack_compute_instance_v2" "kube-master-node" {
  count = "${var.num_master_nodes}"
  name = "${format("kube-master-node-%d", count.index)}"

  region = "${var.openstack_region}"
  image_id = "${var.master_image_id}"
  flavor_name = "${var.master_instance_size}"
  availability_zone = "${var.openstack_availability_zone}"
  key_pair = "${var.openstack_keypair}"
  security_groups = ["default", "kube-sec-group"]
  #floating_ip = "${element(openstack_networking_floatingip_v2.kube-master-node-floatip.*.address, count.index)}"
  metadata {
    ssh_user = "cloud-user"
  }

  network {
    uuid ="${openstack_networking_network_v2.openstack_internal_net.id}"
  }
      

}

resource "openstack_compute_volume_attach_v2" "master-node-docker-vol" {
  instance_id = "${element(openstack_compute_instance_v2.kube-master-node.*.id, count.index)}"
  volume_id   = "${element(openstack_blockstorage_volume_v1.master-node-docker-vol.*.id, count.index)}"
}
