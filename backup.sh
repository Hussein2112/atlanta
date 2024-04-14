#1/bin/bash

echo "About tb backup the webserver directory"
tar czf www.tar.gz /var/www/html --exclude=virtualbox
sleep 200

