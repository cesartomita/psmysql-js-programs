#!/bin/bash
set -e

if mysql -u root <<EOF
CREATE USER 'root'@'%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
then
    echo "Usuário root atualizado com permissões!"
else
    echo "Erro ao atualizar permissão do root."
    exit 1
fi