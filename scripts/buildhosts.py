#!/usr/local/bin/python

import os
from openstack import profile
from openstack import connection
import fileinput
import configparser


AUTH_ARGS = {
    'auth_url': 'http://192.168.1.30:5000/v3',
    'project_name': 'kubernetes',
    'user_domain_name': 'default',
    'project_domain_name': 'default',
    'username': 'admin',
    'password': os.environ["OS_PASSWORD"],
}
CONN = connection.Connection(**AUTH_ARGS)




def list_servers(CONN):
    print("List Servers:")
    ho = open('hosts', 'w+')
    ah = open('/opt/scripts/kubespray/inventory/inventory','w+')
    ho.write("127.0.0.1       localhost\n");
    config = configparser.RawConfigParser()
    config.add_section('master')
    config.add_section('node')
    config.add_section('kube-cluster:children')
    config.add_section('all:vars')
    
    

    for server in CONN.compute.servers():
    
  

        if "kube" in server.name:
          for values in server.addresses.values():
            for address in values:
              if address['OS-EXT-IPS:type'] == 'floating':
                if "app" in server.name:
                  config.set('node', server.name)
                if "master" in server.name:
                  config.set('master', server.name)
                
                print ((address['addr']) + '    ' + server.name)
                ho.write((address['addr']) + '    ' + server.name + '\n');
               
    config.set('kube-cluster:children', "master")
    config.set('kube-cluster:children', "node")
    
    config.set('all:vars',"ansible_connection","ssh")
    config.set('all:vars',"ansible_ssh_user","centos")


    with open('/opt/scripts/kubespray/inventory/inventory', 'w+') as configfile:
      config.write(configfile)

    
    for line in fileinput.FileInput("/opt/scripts/kubespray/inventory/inventory",inplace=1):
      line=line.replace(' = None\n', '')
      print (line)
   
  
list_servers(CONN)

###

###ProviderSide NSXassw7
