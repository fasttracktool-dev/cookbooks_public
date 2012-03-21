# Cookbook Name:: sys_dns

# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

action :set_private do
  RightScale::DnsTools::DME.new(Chef::Log).action_set(new_resource.id, new_resource.user, new_resource.password, new_resource.address)
end

action :set_public do
  RightScale::DnsTools::DME.new(Chef::Log).action_set(new_resource.id, new_resource.user, new_resource.password, new_resource.address)
end