#!/bin/bash

# Remove usuários, grupos e diretórios existentes
echo "Removendo diretórios, usuários e grupos..."
rm -rf /publico /adm /ven /sec


for user in carlos maria joao debora sebastiana roberto josefina amand>
  userdel -r $user 
done

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Criação dos diretórios
echo "Criando diretórios, usuários e associação aos grupos..."
mkdir /publico /adm /ven /sec

# Criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários e associação aos grupos
for user in carlos maria joao; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM  ->
done

for user in debora sebastiana roberto; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN ->
done

for user in josefina amanda rogerio; do
  useradd $user -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC ->
done

echo "Definindo permissões dos diretórios..."
# Definição de proprietário e grupo dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

# Permissões dos diretórios
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim do script"
