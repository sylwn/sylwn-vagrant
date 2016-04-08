echo "============================== Installing SSL certificate"
sudo mkdir -p /etc/apache/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -config /vagrant/vagrant/ssl_cert/config.txt -keyout /etc/apache2/ssl/server.key -out /etc/apache2/ssl/server.crt
