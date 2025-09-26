#
# Cookbook:: mybook
# Recipe:: apache
#
# Copyright:: 2025, The Authors, All Rights Reserved.
#
#




#
# Cookbook:: apache_web
# Recipe:: default
#

# Apache पैकेज इंस्टॉल करें
package 'apache2' do
  action :install
end

# Apache सर्विस को enable और start करें
service 'apache2' do
  action [:enable, :start]
end

# एक बेसिक index.html फाइल बनाएं
file '/var/www/html/index.html' do
  content '<h1>Welcome to Apache Server - Managed by Chef!</h1>'
  mode '0644'
  owner 'root'
  group 'root'
end

