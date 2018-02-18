{
    "ansible_all_ipv4_addresses": [
        "192.168.99.10"
    ], 
    "ansible_all_ipv6_addresses": [
        "fe80::f816:3eff:fed7:5839"
    ], 
    "ansible_apparmor": {
        "status": "disabled"
    }, 
    "ansible_architecture": "x86_64", 
    "ansible_bios_date": "04/01/2014", 
    "ansible_bios_version": "1.10.2-3.el7_4.1", 
    "ansible_cmdline": {
        "BOOT_IMAGE": "/boot/vmlinuz-3.10.0-693.11.6.el7.x86_64", 
        "LANG": "en_US.UTF-8", 
        "console": "ttyS0,115200", 
        "crashkernel": "auto", 
        "ro": true, 
        "root": "UUID=e64899eb-665e-41a9-b7da-ed5781a8b3aa"
    }, 
    "ansible_date_time": {
        "date": "2018-02-17", 
        "day": "17", 
        "epoch": "1518873343", 
        "hour": "13", 
        "iso8601": "2018-02-17T13:15:43Z", 
        "iso8601_basic": "20180217T131543917169", 
        "iso8601_basic_short": "20180217T131543", 
        "iso8601_micro": "2018-02-17T13:15:43.917284Z", 
        "minute": "15", 
        "month": "02", 
        "second": "43", 
        "time": "13:15:43", 
        "tz": "UTC", 
        "tz_offset": "+0000", 
        "weekday": "Saturday", 
        "weekday_number": "6", 
        "weeknumber": "07", 
        "year": "2018"
    }, 
    "ansible_default_ipv4": {
        "address": "192.168.99.10", 
        "alias": "eth0", 
        "broadcast": "192.168.99.255", 
        "gateway": "192.168.99.1", 
        "interface": "eth0", 
        "macaddress": "fa:16:3e:d7:58:39", 
        "mtu": 1450, 
        "netmask": "255.255.255.0", 
        "network": "192.168.99.0", 
        "type": "ether"
    }, 
    "ansible_default_ipv6": {}, 
    "ansible_device_links": {
        "ids": {
            "vdb": [
                "virtio-efc693be-4d2e-43f6-8"
            ]
        }, 
        "labels": {}, 
        "masters": {}, 
        "uuids": {
            "vda1": [
                "e64899eb-665e-41a9-b7da-ed5781a8b3aa"
            ]
        }
    }, 
    "ansible_devices": {
        "vda": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {
                "vda1": {
                    "holders": [], 
                    "links": {
                        "ids": [], 
                        "labels": [], 
                        "masters": [], 
                        "uuids": [
                            "e64899eb-665e-41a9-b7da-ed5781a8b3aa"
                        ]
                    }, 
                    "sectors": "335542239", 
                    "sectorsize": 512, 
                    "size": "160.00 GB", 
                    "start": "2048", 
                    "uuid": "e64899eb-665e-41a9-b7da-ed5781a8b3aa"
                }
            }, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "335544320", 
            "sectorsize": "512", 
            "size": "160.00 GB", 
            "support_discard": "0", 
            "vendor": "0x1af4", 
            "virtual": 1
        }, 
        "vdb": {
            "holders": [], 
            "host": "", 
            "links": {
                "ids": [
                    "virtio-efc693be-4d2e-43f6-8"
                ], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": null, 
            "partitions": {}, 
            "removable": "0", 
            "rotational": "1", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "", 
            "sectors": "2097152", 
            "sectorsize": "512", 
            "size": "1.00 GB", 
            "support_discard": "0", 
            "vendor": "0x1af4", 
            "virtual": 1
        }
    }, 
    "ansible_distribution": "CentOS", 
    "ansible_distribution_file_parsed": true, 
    "ansible_distribution_file_path": "/etc/redhat-release", 
    "ansible_distribution_file_variety": "RedHat", 
    "ansible_distribution_major_version": "7", 
    "ansible_distribution_release": "Core", 
    "ansible_distribution_version": "7.4.1708", 
    "ansible_dns": {
        "nameservers": [
            "8.8.8.8"
        ], 
        "search": [
            "openstacklocal"
        ]
    }, 
    "ansible_domain": "openshift.jyiii.internal.novalocal", 
    "ansible_effective_group_id": 0, 
    "ansible_effective_user_id": 0, 
    "ansible_env": {
        "HOME": "/root", 
        "LANG": "en_US.UTF-8", 
        "LOGNAME": "root", 
        "MAIL": "/var/mail/openshift", 
        "PATH": "/sbin:/bin:/usr/sbin:/usr/bin", 
        "PWD": "/home/openshift", 
        "SHELL": "/bin/bash", 
        "SHLVL": "1", 
        "SUDO_COMMAND": "/bin/sh -c echo BECOME-SUCCESS-ldxluwrscziafbnkhpigidbbbrihepkt; /usr/bin/python", 
        "SUDO_GID": "1000", 
        "SUDO_UID": "1000", 
        "SUDO_USER": "openshift", 
        "TERM": "unknown", 
        "USER": "root", 
        "USERNAME": "root", 
        "_": "/usr/bin/python"
    }, 
    "ansible_eth0": {
        "active": true, 
        "device": "eth0", 
        "features": {
            "busy_poll": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "off [fixed]", 
            "netns_local": "off [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "on [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_vlan_filter": "on [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "off [fixed]", 
            "tx_checksumming": "on", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_csum_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_partial": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipip_segmentation": "off [fixed]", 
            "tx_lockless": "off [fixed]", 
            "tx_mpls_segmentation": "off [fixed]", 
            "tx_nocache_copy": "off", 
            "tx_scatter_gather": "on", 
            "tx_scatter_gather_fraglist": "off [fixed]", 
            "tx_sctp_segmentation": "off [fixed]", 
            "tx_sit_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_mangleid_segmentation": "off", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_tnl_csum_segmentation": "off [fixed]", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "udp_fragmentation_offload": "on", 
            "vlan_challenged": "off [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "192.168.99.10", 
            "broadcast": "192.168.99.255", 
            "netmask": "255.255.255.0", 
            "network": "192.168.99.0"
        }, 
        "ipv6": [
            {
                "address": "fe80::f816:3eff:fed7:5839", 
                "prefix": "64", 
                "scope": "link"
            }
        ], 
        "macaddress": "fa:16:3e:d7:58:39", 
        "module": "virtio_net", 
        "mtu": 1450, 
        "pciid": "virtio0", 
        "promisc": false, 
        "timestamping": [
            "rx_software", 
            "software"
        ], 
        "type": "ether"
    }, 
    "ansible_fips": false, 
    "ansible_form_factor": "Other", 
    "ansible_fqdn": "dns-0.openshift.jyiii.internal.novalocal", 
    "ansible_hostname": "dns-0", 
    "ansible_interfaces": [
        "lo", 
        "eth0"
    ], 
    "ansible_kernel": "3.10.0-693.11.6.el7.x86_64", 
    "ansible_lo": {
        "active": true, 
        "device": "lo", 
        "features": {
            "busy_poll": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "on [fixed]", 
            "netns_local": "on [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "on [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on [fixed]", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "on [fixed]", 
            "tx_checksumming": "on", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_csum_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_partial": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipip_segmentation": "off [fixed]", 
            "tx_lockless": "on [fixed]", 
            "tx_mpls_segmentation": "off [fixed]", 
            "tx_nocache_copy": "off [fixed]", 
            "tx_scatter_gather": "on [fixed]", 
            "tx_scatter_gather_fraglist": "on [fixed]", 
            "tx_sctp_segmentation": "on", 
            "tx_sit_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_mangleid_segmentation": "on", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_tnl_csum_segmentation": "off [fixed]", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "udp_fragmentation_offload": "on", 
            "vlan_challenged": "on [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "127.0.0.1", 
            "broadcast": "host", 
            "netmask": "255.0.0.0", 
            "network": "127.0.0.0"
        }, 
        "ipv6": [
            {
                "address": "::1", 
                "prefix": "128", 
                "scope": "host"
            }
        ], 
        "mtu": 65536, 
        "promisc": false, 
        "timestamping": [
            "rx_software", 
            "software"
        ], 
        "type": "loopback"
    }, 
    "ansible_local": {}, 
    "ansible_lsb": {}, 
    "ansible_machine": "x86_64", 
    "ansible_machine_id": "609bbd29e32a4898e604f49bff82a88c", 
    "ansible_memfree_mb": 15463, 
    "ansible_memory_mb": {
        "nocache": {
            "free": 15626, 
            "used": 259
        }, 
        "real": {
            "free": 15463, 
            "total": 15885, 
            "used": 422
        }, 
        "swap": {
            "cached": 0, 
            "free": 0, 
            "total": 0, 
            "used": 0
        }
    }, 
    "ansible_memtotal_mb": 15885, 
    "ansible_mounts": [
        {
            "block_available": 41723732, 
            "block_size": 4096, 
            "block_total": 41940219, 
            "block_used": 216487, 
            "device": "/dev/vda1", 
            "fstype": "xfs", 
            "inode_available": 83860811, 
            "inode_total": 83885552, 
            "inode_used": 24741, 
            "mount": "/", 
            "options": "rw,seclabel,relatime,attr2,inode64,noquota", 
            "size_available": 170900406272, 
            "size_total": 171787137024, 
            "uuid": "e64899eb-665e-41a9-b7da-ed5781a8b3aa"
        }
    ], 
    "ansible_nodename": "dns-0.openshift.jyiii.internal.novalocal", 
    "ansible_os_family": "RedHat", 
    "ansible_pkg_mgr": "yum", 
    "ansible_processor": [
        "0", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "1", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "2", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "3", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "4", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "5", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "6", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)", 
        "7", 
        "GenuineIntel", 
        "Intel Core Processor (Skylake)"
    ], 
    "ansible_processor_cores": 1, 
    "ansible_processor_count": 8, 
    "ansible_processor_threads_per_core": 1, 
    "ansible_processor_vcpus": 8, 
    "ansible_product_name": "OpenStack Compute", 
    "ansible_product_serial": "7ee15184-593f-4411-a526-dea9666ee778", 
    "ansible_product_uuid": "7AF91C02-66E8-4688-830F-3EA10BFA698A", 
    "ansible_product_version": "16.0.3-2.el7", 
    "ansible_python": {
        "executable": "/usr/bin/python", 
        "has_sslcontext": true, 
        "type": "CPython", 
        "version": {
            "major": 2, 
            "micro": 5, 
            "minor": 7, 
            "releaselevel": "final", 
            "serial": 0
        }, 
        "version_info": [
            2, 
            7, 
            5, 
            "final", 
            0
        ]
    }, 
    "ansible_python_version": "2.7.5", 
    "ansible_real_group_id": 0, 
    "ansible_real_user_id": 0, 
    "ansible_selinux": {
        "config_mode": "enforcing", 
        "mode": "enforcing", 
        "policyvers": 28, 
        "status": "enabled", 
        "type": "targeted"
    }, 
    "ansible_selinux_python_present": true, 
    "ansible_service_mgr": "systemd", 
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBKRU0pOhuo3TwqDPSLA2uGQG/Uv0qssHtSlBHOlhFG4nLivi0sc/FqN6Ni+MjM6G14Y8QNWsBT26x0I4PuFiiTE=", 
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIB3uauzDAeyJ6nGc36HOv5vSiqWzt4LDz+a8j+qdd7eW", 
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQC2nIq++fcLERYtoFq9hurR7RDaWN1OySfAT992imNm5KGCC5fcAhPqrW/nF69YHUJohlVdLbA/Wk2OYCO1QzBNX1YOz5+N5kLQ4OAcDthKbyMZvObc+sy7WaLq9qXd7a0rTzgXjb+PPJBKmX4r9Xk3snC7a3z0M7rp+14O3p73Q4qRvIzLKwbYQ1+V8pnwIPSj/DfeHNCKaNGhKp30TqIqvf7HJ3mF45ihl8kcpm2H86MgNzfPORkPJttkAh4IYtoDx8HLG75zltIFhEfuOgFbok4OVistTxfKTyLi7aClLGxkPZs7ls5WhOQZZEV6ORu68OkyA3lj1/U6tkN+9b9Z", 
    "ansible_swapfree_mb": 0, 
    "ansible_swaptotal_mb": 0, 
    "ansible_system": "Linux", 
    "ansible_system_capabilities": [
        "cap_chown", 
        "cap_dac_override", 
        "cap_dac_read_search", 
        "cap_fowner", 
        "cap_fsetid", 
        "cap_kill", 
        "cap_setgid", 
        "cap_setuid", 
        "cap_setpcap", 
        "cap_linux_immutable", 
        "cap_net_bind_service", 
        "cap_net_broadcast", 
        "cap_net_admin", 
        "cap_net_raw", 
        "cap_ipc_lock", 
        "cap_ipc_owner", 
        "cap_sys_module", 
        "cap_sys_rawio", 
        "cap_sys_chroot", 
        "cap_sys_ptrace", 
        "cap_sys_pacct", 
        "cap_sys_admin", 
        "cap_sys_boot", 
        "cap_sys_nice", 
        "cap_sys_resource", 
        "cap_sys_time", 
        "cap_sys_tty_config", 
        "cap_mknod", 
        "cap_lease", 
        "cap_audit_write", 
        "cap_audit_control", 
        "cap_setfcap", 
        "cap_mac_override", 
        "cap_mac_admin", 
        "cap_syslog", 
        "35", 
        "36+ep"
    ], 
    "ansible_system_capabilities_enforced": "True", 
    "ansible_system_vendor": "RDO", 
    "ansible_uptime_seconds": 627, 
    "ansible_user_dir": "/root", 
    "ansible_user_gecos": "root", 
    "ansible_user_gid": 0, 
    "ansible_user_id": "root", 
    "ansible_user_shell": "/bin/bash", 
    "ansible_user_uid": 0, 
    "ansible_userspace_architecture": "x86_64", 
    "ansible_userspace_bits": "64", 
    "ansible_virtualization_role": "guest", 
    "ansible_virtualization_type": "kvm", 
    "gather_subset": [
        "all"
    ], 
    "module_setup": true
}