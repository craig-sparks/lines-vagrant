node.set['mysql']['server_root_password'] = "root"
node.set['mysql']['server_repl_password']  = "root"
node.set['mysql']['server_debian_password'] = "root"

include_recipe "mysql::server"
