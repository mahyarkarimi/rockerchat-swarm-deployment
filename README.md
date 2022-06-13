# Rocketchat Swarm Deployment

This is the [Rocketchat](https://rocket.chat/) deployment on Docker Swarm cluster.
[Rocketchat Github](https://github.com/RocketChat/Rocket.Chat).
[Mongodb Bitnami Docker Image](https://hub.docker.com/r/bitnami/mongodb)
## Swarm Initialization

To start rocketchat stack on Docker Swarm cluster make sure docker binaries are installed. to intall docker on linux/windows/macos see [Docker Installation](https://docs.docker.com/engine/install)
To create a Docker Swarm Cluster run:
```
docker swarm init
```
To add manager to docker swarm cluster run 
```docker swarm join-token manager```
to get manager join token.
To add manager/worker to docker swarm cluster, join token is required. To get manager/worker join tokens run the following commands accordingly.
To add manager:
```
docker swarm join-token manager
```
To add worker:
```
docker swarm join-token worker
```
Then use the tokens from previous above in the following command to join into cluster. (run it in any other machine with docker installed)
```
docker swarm join --token <token>
```

## Deployment Instructions

1. clone the repo and cd into project root directory
2. Please run install.sh to create external docker volumes
   ```
   sh ./install.sh
   ```
3. edit environment variable files in `./env/` directory
4. to start up the server run:
   ```
   docker stack deploy -c docker-compose.yml rocketchat
   ```
   or
   ```
   sh ./rc-deploy
   ```