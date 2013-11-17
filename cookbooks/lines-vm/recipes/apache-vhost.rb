#move apache2-vhost.conf to a location Apache is expecting to find it
cookbook_file "/etc/httpd/sites-enabled/web-app.conf" do
  source "apache2-vhost.conf"
  group "vagrant"
  owner "vagrant"
end

# chmod dev directorys
directory "/home" do
  owner "vagrant"
  group "vagrant"
  mode 0755
end

# chmod dev directorys
directory "/home/vagrant" do
  owner "vagrant"
  group "vagrant"
  mode 0755
end
 
# restart apache2 to implement vhost changes
service "apache2" do
  action :restart
end

