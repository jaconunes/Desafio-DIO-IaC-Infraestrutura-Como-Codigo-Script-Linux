#!/bin/bash

echo "CRIAR DIRETÓRIOS"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIAR GRUPOS"
groupadd GRP_ADM,GRP_VEN,GRP_SEC


echo "CRIAR USUÁRIOS"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)


echo "APLICAR USUÁRIOS EM CADA GRUPO"
usermod -G publico,adm carlos
usermod -G publico,adm maria
usermod -G publico,adm joao

usermod -G publico,ven debora
usermod -G publico,ven sebastiana
usermod -G publico,ven roberto

usermod -G publico,sec josefina
usermod -G publico,sec amanda
usermod -G publico,sec rogerio


echo "APLICAR AS PERMISSÕES"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
