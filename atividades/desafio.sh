#! /bin/bash

echo "<--------------------------><|-INICIANDO-|><---------------------------->"

echo "Criando pastas >>>"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios >>>"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios >>>"

useradd joao -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd simao -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_ADM

useradd pedro -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN
useradd andre -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN
useradd tiago -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_VEN

useradd tome -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC
useradd felipe -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC
useradd natanael -m -s /bin/bash  -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios >>>"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "<--------------------------><|-Fim-|><---------------------------------->"

