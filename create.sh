#!/bin/bash

echo "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios criados, criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados, criando usuarios \nCriando membros do GRP_ADM"

useradd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -G GRP_ADM
useradd joao -m -c "Joao" -s /bin/bash -G GRP_ADM

echo "Criando membros do GRP_VEN"

useradd debora -m -c "Debora" -s /bin/bash -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN

echo "Criando membros do GRP_SEC"

useradd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -G GRP_SEC

echo "Atribuindo donos dos diretorios publico, adm, ven e sec."

chown -R root:root /publico
chown -R root:GRP_ADM /adm
chown -R root:GRP_VEN /ven
chown -R root:GRP_SEC /sec

echo "Atribuindo permissoes para as pastas publico, adm, ven e sec."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"
