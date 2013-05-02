execute "disable-selinux" do 
   command 'sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config"'  
   ignore_failure true
end
