#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo touch /var/www/html/index.html
sudo chmod 766 /var/www/html/index.html 
sudo cat <<ENDL > /var/www/html/index.html
<h1>Hello world</h1>
<h2>This is day 2 test</h2>
ENDL
sudo systemctl start apache2

