#!/bin/bash

echo ""
date
echo ""
echo "IAC - Script iniciado!"
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Gerando Grupos e suas Permissões..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Criando Usuários..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_ADM
useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_VEN
useradd roberto -c "Carlos" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_VEN
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_SEC
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd 12345) -G GRP_SEC

passwd carlos -q -e
passwd maria  -q -e
passwd joao  -q -e
passwd debora -q -e
passwd sebastiana -q -e
passwd roberto  -q -e
passwd josefina -q -e
passwd amanda  -q -e
passwd rogerio -q -e

echo "Processo finalizado..."
