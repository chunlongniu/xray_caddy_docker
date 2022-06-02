# Xray + caddy as vmess proxy

This container is for integrating xray (vmess) with caddy (https)
to provide more security proxy like for our selves

requirement:
- X86(64 bit) VPS platform is necessary
- Install docker on this VPS platform
- Turn on the 443 on this VPS platform

Steps:
1. Clone repository
  ```shell
  git clone https://github.com/chunlongniu/xray_caddy_docker.git
  ```shell
2. Access into repository
3. build image
 ```shell
 docker build -t alpine:xray_caddy2
 ```
3. Launch container
 ```shell
 docker run -d -it -p 443:443 -w /workspaces --name "xray_caddy2" --env DOMAIN_NAME='domain.name' alpine:xray
 ```

