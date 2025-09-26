#
# Cookbook:: Mybook
# Recipe:: user
#
# Copyright:: 2025, The Authors, All Rights Reserved.
#




user 'deepak' do
  manage_home true
  password '$2y$10$Ckpb/wJov3.8qAGpNUsgduX59.OD14uSGois8QR4yDLLAotGZCavK'
  action :create
end

