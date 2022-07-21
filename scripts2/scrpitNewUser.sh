#!/bin/bash

echo "Bem vindo! criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."

useradd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd laura -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd samantha-m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd linda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd gato -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


