sudo apt-get install apache2 apache2-utils autoconf gcc libc6 libgd-dev make php python python3 tree unzip wget
cd /tmp/
ls
wget -q http://192.168.74.3/sw/security_tools/nagios/nagios-4.4.5.tar.gz
ls
tar -xvf nagios-4.4.5.tar.gz
ls
cd nagios-4.4.5
ls -l
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled/
sudo make all
sudo make install-groups-users
sudo passwd nagios
sudo usermod -aG nagios www-data
sudo make install
sudo tree -dL 1 /usr/local/nagios/
sudo make install-daemoninit
sudo tree -dL 1 /usr/local/nagios/
sudo make install-commandmode
sudo make install-config
sudo ls -l /usr/local/nagios/
sudo make install-webconf
sudo tree /etc/apache2/sites-*
sudo a2enmod rewrite
sudo a2enmod cgi
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
sudo systemctl restart apache2
sudo systemctl start nagios
hostname -I
sudo apt-get install automake autotools-dev bc build-essential dc gawk gettext libmcrypt-dev libnet-snmp-perl libssl-dev snmp
cd ..
ls -l
wget -q http://192.168.74.3/sw/security_tools/nagios/nagios-plugins-release-2.2.1.tar.gz
ls -l
tar -xvf nagios-plugins-release-2.2.1.tar.gz
ls -l
cd nagios-plugins-release-2.2.1
ls -l /usr/local/nagios/libexec/
sudo ./tools/setup
ls
sudo ./configure
sudo make
sudo make install
ls -l /usr/local/nagios/libexec/
