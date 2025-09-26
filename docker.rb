#
# Cookbook:: mybook
# Recipe:: docker
#
# Copyright:: 2025, The Authors, All Rights Reserved.
#
#



#
# Cookbook:: docker_simple
# Recipe:: default
#

# Update apt cache
apt_update 'update' do
  action :update
end

# Install Docker from Ubuntu repo (simple way)
package 'docker.io' do
  action :install
end

# Enable and start Docker service
service 'docker' do
  action [:enable, :start]
end

