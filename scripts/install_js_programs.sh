#!/bin/bash
set -e

if mysql -u root <<EOF
INSTALL COMPONENT 'file://component_js_lang';
GRANT CREATE_JS_ROUTINE ON *.* TO root@localhost;
EOF
then
    echo "Instalação do componente js_lang concluída com sucesso!"
else
    echo "Erro na instalação do componente js_lang."
    exit 1
fi