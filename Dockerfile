FROM percona/percona-server:8.4

USER root
# Instala o pacote oficial que contém a biblioteca do motor V8 (component_js_lang.so)
RUN microdnf install -y percona-server-js \
    && microdnf clean all

USER mysql
