# Micro-Services

## Docker

### Installing Docker on Ubuntu
- `sudo apt-get install ca-certificates curl gnupg lsb-release`
- `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
- `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
- `sudo apt-get update`
- `sudo apt-get install docker-ce docker-ce-cli containerd.io`
- test with `sudo docker version`

### Manage Docker as a non-root user
- `sudo groupadd docker`
- `sudo usermod -aG docker $USER`
- Logout and log back in, and then `newgrp docker`.
- Now test out if you can use docker commands without sudo `docker run hello-world`.

### Docker Commands
- To download a docker image with optional tag `docker pull {user}/{image}:{tag}`.
- To create a docker container `docker create {image}`.
- User `docker run {image}` to create container as well as start it, it would also pull the image if its not available.
- Check docker images available on host `docker images`.
- To delete a docker image `docker rmi {image}`. (optional `-f` to force the deletion, for example a container is using the image)
- to check running containers `docker ps`. (add `-a` for all containers.)
- Add `-p {host_port}:{container_port}` in the `docker run` command to map ports.
- `docker rm {container_name}` (optional `-f` to force the deletion, for example a container is running)
- To copy from local host to a docker container `docker cp {file} {container_id}:{dest}`

### Committing and pushing a container image to DockerHub
- `docker commit {container_id} {user}/{repo}:{tag}`
- `docker push {user}/{repo}:{tag}`
This would create the repo in DockerHub, and push the image in with tag latest, unless specified otherwise.