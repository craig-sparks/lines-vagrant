Vagrant::Config.run do |config|
	config.vm.box = "lines-dev-1.0"
  
	config.vm.boot_mode = :gui

	config.vm.network :hostonly, "33.33.33.33"
	config.vm.network :bridged
	config.vm.forward_port 80, 8080
	
	config.vm.host_name = "dev.lines.com"

	config.vm.share_folder("web-app", "/home/vagrant/web-app", "../", :owner => "vagrant")

	config.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = "cookbooks"
		chef.add_recipe("yum")
		chef.add_recipe("apache2")
		chef.add_recipe("apache2::mod_rewrite")
		chef.add_recipe("apache2::mod_headers")
		chef.add_recipe("php")
		chef.add_recipe("lines-vm::apache-vhost")
		chef.add_recipe("git")
		chef.add_recipe("lines-vm::mysql")
	end
end
