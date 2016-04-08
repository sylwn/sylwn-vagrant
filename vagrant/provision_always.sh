echo "============================== Composer self-update"
sudo composer self-update

echo "============================== Setting Apache Vhosts"
sudo rm /etc/apache2/sites-enabled/*
sudo cp /vagrant/vagrant/apache_vhosts/* /etc/apache2/sites-enabled/

echo "============================== Reboot Apache"
sudo service apache2 restart
