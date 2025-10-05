#
# Cookbook:: apache-book
# Recipe:: time-sch
#
# Copyright:: 2025, The Authors, All Rights Reserved.
#




#
# Cookbook:: apache-book
# Recipe:: time-sch
#

# Install cronie (provides crontab)
package 'cronie' do
  action :install
end

# Enable and start cron service
service 'crond' do
  action [:enable, :start]
end

# Schedule chef-client to run every 30 minutes
cron 'chef-client-run' do
  minute '*/2'
  command '/opt/chef/bin/chef-client'
  user 'root'
end
