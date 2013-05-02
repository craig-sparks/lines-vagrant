<h2>Lines-vagrant</h2>
=============

Last Updated : 30th April 2013

<h2>Description</h2>
=============

Vagrant box & files for lines.

<h2>How To</h2>
=============

    mkdir vagrant; cd vagrant; git init
    git remote add origin git@github.com:bbyrne98/lines-vagrant.git
    git pull origin master
    vagrant box add lines-dev-1.0 lines-dev-1.0.box
    vagrant up
    

<h2>Platform</h2>
=============

    CentOS 5.9 (Final)

<h2>Chefbooks:</h2>
=============

    apache2 (pre-optimized)
    php
    mysql
    chef-mysql-optimization
    git(auto update)
    yum(auto update system packages)
    openssl
    memcached
    
<h2>Extras:</h2>
==============
    createdb (create user and database for MySQL) 
    Usage: bash# createdb testdb testuser secretpass
    
