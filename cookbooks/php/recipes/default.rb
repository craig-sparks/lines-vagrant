include_recipe "php::#{node['php']['install_method']}"

package "php53-mysql" do
  action :install
end

package "php53-gd" do
  action :install
end

package "php53-mcrypt" do
  action :install
end

package "php53-mbstring" do
  action :install
end

package "php53-xml" do
  action :install
end

