#!/bin/bash
export TF_VAR_openstack_user_name=$OS_USERNAME
export TF_VAR_openstack_tenant_name=$OS_TENANT_NAME
export TF_VAR_openstack_tenant_id=$OS_TENANT_ID
export TF_VAR_openstack_password=$OS_PASSWORD
export TF_VAR_openstack_auth_url=$OS_AUTH_URL
echo "Terraform Varables set."
