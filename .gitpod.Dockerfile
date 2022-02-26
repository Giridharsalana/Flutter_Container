webtop:
  image: ghcr.io/linuxserver/webtop
  container_name: webtop
  privileged: true #optional
  environment:
    - PUID=1000
    - PGID=1000
    - TZ=Europe/London
    - SUBFOLDER=/ #optional
  volumes:
    - /path/to/data:/config
    - /var/run/docker.sock:/var/run/docker.sock #optional
  ports:
    - 3000:3000
  shm_size: "1gb" #optional
  restart: unless-stopped
