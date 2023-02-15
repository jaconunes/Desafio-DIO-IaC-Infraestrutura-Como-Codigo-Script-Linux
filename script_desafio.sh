#!/bin/bash

echo "CRIAR DIRETÓRIOS"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "CRIAR GRUPOS"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "CRIAR USUÁRIOS"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)


echo "APLICAR USUÁRIOS EM CADA GRUPO"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


echo "APLICAR AS PERMISSÕES"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
