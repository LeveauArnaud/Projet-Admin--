#Initialisation à partir de l'image romeoz/docker-apache-php
#https://hub.docker.com/r/romeoz/docker-apache-php
FROM romeoz/docker-apache-php

# Install des packages utiles
RUN apt-get update -y
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano vim
RUN apt-get install -y dnsutils
RUN apt-get install -y elinks curl

# Ajoute les datas des sites web / VirtualHosts
ADD ./www/ /var/www/
ADD ./sites-available/ /etc/apache2/sites-available/

# Utilisation de certbot pour le https
RUN apt-get install -y software-properties-common 
RUN apt-get install -y python-certbot-apache

# Ajoute les configuration d'apache
COPY apache2.conf /etc/apache2/apache2.conf

# Active les VirtualHosts 
RUN a2ensite b2b.conf
RUN a2ensite www.conf

# Restart le service pour activer les VirtualHosts
RUN service apache2 restart
