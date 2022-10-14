# DOCKER EXAMPLES FOR DJANGO

## Plan
1. introduction
2. env
3. docker file description
4. how to use ports
5. networks
6. docker image types (slim, buster, bullseye, alpine)
7. best practices for docker (base, optimized images, run, multistage)
8. volumes
9. docker pull/push. docker repo
10. docker-compose 
11. migrations
12. useful commands
13. frontend


commands:
```bash
# shows detailed output
DOCKER_BUILDKIT=0 docker build -t dev-ui:0.2 .
# run a specific command and get result immediately (in the current case ls)
docker run --rm -it bbed3e5062ce ls -alh
# shows history of changes
docker history docker-ex:0.1
# go into container (web is a name of a container in docker-compose)
# if you use just docker it should be changed to container id
docker exec -it web sh
# delete everything (images, containers)
docker system prune -a
```

Links
[docker-compose](https://docs.docker.com/compose/compose-file/)