#!/bin/bash

echo "Iniciando o provisionamento..."

# === Remoção de usuários, grupos e diretórios anteriores ===
echo "Removendo usuários antigos..."
for usuario in carlos maria joao debora sebastiana roberto josefina amanda rogerio; do
  userdel -r -f $usuario 2>/dev/null
done

echo "Removendo grupos antigos..."
for grupo in GRP_ADM GRP_VEN GRP_SEC; do
  groupdel $grupo 2>/dev/null
done

echo "Removendo diretórios antigos..."
rm -rf /publico /adm /ven /sec

# === Criação de diretórios ===
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# === Criação de grupos ===
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# === Criação de usuários ===
echo "Criando usuários e adicionando aos grupos..."

# ADM
useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Senha123)

# VEN
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Senha123)

# SEC
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Senha123)

# === Permissões dos diretórios ===
echo "Configurando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Provisionamento concluído com sucesso!"
