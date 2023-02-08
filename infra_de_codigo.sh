#!/bin/bash

echo "Criando os diretórios"

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando users"

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 123)

useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 123)

useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 123)

echo "Dando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Fim"
