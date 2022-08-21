#! /bin/bash

echo "Atualizando o Servidor."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2."

apt-get install apache2 -y

echo "Instalando o unzip"

apt-get install unzip -y

echo "Instalando o wget"
apt install wget -y

echo "Download do arquivo .zip do repositorio git hub dentro da pasta /tmp"
cd /
cd /tmp
wget https://github.com/Rafael702/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o main.zip"
unzip main.zip
cd linux-site-dio-main

echo "Copiandos os arquivos baixados para a pasta do apache /var/www/html"
cp -R * /var/www/html







