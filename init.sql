-- 1. Registra e carrega o componente V8 no servidor
INSTALL COMPONENT 'file://component_js_lang';

-- 2. Concede privilégio de criar rotinas em JS e consultar o componente aos usuários
GRANT CREATE_JS_ROUTINE ON *.* TO 'root'@'localhost';
GRANT CREATE_JS_ROUTINE ON *.* TO 'root'@'%';
GRANT CREATE_JS_ROUTINE ON *.* TO 'dev'@'%';
GRANT SELECT ON mysql.component TO 'dev'@'%';
FLUSH PRIVILEGES;

-- Permite criar funções mesmo com binary logging ativo sem exigir DETERMINISTIC explícito
SET GLOBAL log_bin_trust_function_creators = 1;

USE sandbox;

-- 3. Cria uma função de teste simples em JavaScript
CREATE FUNCTION IF NOT EXISTS formata_usuario(payload JSON) 
RETURNS JSON DETERMINISTIC LANGUAGE JS AS $$
    return {
        nome: payload.nome.toUpperCase(),
        processado_em: new Date().toISOString(),
        ativo: Boolean(payload.ativo)
    };
$$;
