echo "Atualizando arquivos..."
pacman -Syu
pacman -Sy apach
pacman -Sy unzip 


echo "Baixando os arquivos para o site"
cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
