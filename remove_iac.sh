#!/bin/bash
echo ""
echo "Removendo todos os diretórios,grupos e usuários criados no Script"

rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

echo "Limpeza concluída."
