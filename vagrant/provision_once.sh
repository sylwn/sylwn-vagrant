echo "============================== Installing SSL certificate"
sudo mkdir -p /etc/apache/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -config /vagrant/vagrant/ssl_cert/config.txt -keyout /etc/apache2/ssl/server.key -out /etc/apache2/ssl/server.crt

echo "============================== Installing Symfony Installer"
sudo chmod a+x /usr/local/bin/symfony
sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony

echo "============================== Install Git Flow"
sudo apt-get install git-flow