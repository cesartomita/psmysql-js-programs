FROM debian:bookworm-slim

RUN apt update && apt upgrade -y \
    && apt install -y curl gnupg2 lsb-release sudo gosu \
    && curl -O https://repo.percona.com/apt/percona-release_latest.generic_all.deb \
    && apt install -y ./percona-release_latest.generic_all.deb \
    && apt update \
    && percona-release enable ps-84-lts experimental \
    && apt install -y percona-server-server \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3306

COPY scripts/grant_root_permission.sh /tmp/grant_root_permission.sh
COPY scripts/install_js_programs.sh /tmp/install_js_programs.sh

CMD ["gosu", "mysql", "mysqld"]