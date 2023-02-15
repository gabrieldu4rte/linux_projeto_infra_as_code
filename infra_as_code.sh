#!/bin/bash

echo "Criando os diretórios da tropa"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários para todos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários da panela do dr. Von Tegrisco"

useradd jamil -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd vinicius -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd jaum -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd hugo -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd felipe -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rodrigo -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd allan -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especificando as permissões dos diretórios para cada grupo de usuários"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"