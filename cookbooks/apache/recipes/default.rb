#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# install apache



package node["package_name"] do
   action :install
end

# start the apache service
# make sure the service starts on reboot

service node["service_name"] do
	action [:start, :enable]
end


# write out home page

# cookbook_file "#{node["document_root"]}/index.html" do
#	source "index.html"
#	mode "0644"
# end

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
	mode "0644"
end