# 🐧 Linux Command Cheat Sheet

## GIT

```bash
# Git Commands

git init : Initialize new repository
git clone : Clone a repository
git status : Show working tree status
git add : Add files to staging
  git add . : Add all files
git commit : Commit changes
  git commit -m "message" : Commit with message
git push : Push to remote repository
git pull : Fetch and merge from remote
git branch : List/create branches
  git branch -d : Delete branch
git checkout : Switch branches
  git checkout -b : Create and switch to new branch
git merge : Merge branches
git rebase : Reapply commits on top of another branch
git log : Show commit logs
  git log --oneline : Compact log view
git diff : Show changes
git stash : Stash changes temporarily
git remote : Manage remote repositories
git reset : Reset current HEAD
  git reset --hard : Discard all changes
git tag : Create/list tags
git config : Configure settings
```

## DOCKER

```bash
# Docker Commands

docker ps : List running containers
  docker ps -a : List all containers
docker images : List images
docker run : Run a container
  docker run -it : Interactive terminal
  docker run -d : Detached mode
  docker run -p 8080:80 : Port mapping
docker stop : Stop container
docker start : Start stopped container
docker rm : Remove container
  docker rm -f : Force remove running container
docker rmi : Remove image
docker build : Build image from Dockerfile
docker pull : Pull image from registry
docker push : Push image to registry
docker logs : View container logs
  docker logs -f : Follow log output
docker exec : Execute command in running container
  docker exec -it /bin/bash : Get shell in container
docker volume : Manage volumes
docker network : Manage networks
docker-compose up : Start services
docker-compose down : Stop services
docker system prune : Clean up unused objects
docker info : Display system information
```

