From alpine:latest

LABEL maintainer="chunlong.niu1@gmail.com"

RUN mkdir /workspaces/

WORKDIR /workspaces/

COPY xray /workspaces/xray

COPY caddy /workspaces/caddy

COPY etc/logrotate.d/xray /etc/logrotate.d/xray

COPY etc/logrotate.d/caddy /etc/logrotate.d/caddy

ENTRYPOINT ["/bin/sh", "-c", "caddy/bin/caddy_linux_amd64 start -config caddy/etc/Caddyfile && xray/bin/xray run -c xray/etc/config.json"]
