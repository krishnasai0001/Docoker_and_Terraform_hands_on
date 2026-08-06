# Docker Notes & Labs

### Running an Nginx Server
Command used to spin up a background web server:
`docker run -d -p 8080:80 --name my-nginx nginx`

* `-d`: Runs the container in the background (detached mode).
* `-p 8080:80`: Maps port 8080 on my laptop to port 80 inside the container.
* `--name`: Gives the container a recognizable name instead of a random string.

### Inspecting Nginx Configuration
To jump inside the running container and read files, I used:
`docker exec -it my-nginx /bin/bash`

Inside the container, the core configuration file lives at `/etc/nginx/nginx.conf`. It handles worker connections, logs traffic locations, and includes modular config files from `/etc/nginx/conf.d/`.
