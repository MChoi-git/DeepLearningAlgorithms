# Description
The docker files here are used to build the environments required by this repo.
They are built first locally, then uploaded to the compute cluster to be
converted to singularity containers.

# Useful Commands
Build a docker image
```
docker build -f my.Dockerfile -t <tag_name(optional)>
```
Build singularity container
```
singularity build <name>.sif docker://<username>/<container_name>
```

Remove none images
```
docker rmi $(docker images -f "dangling=true" -q)
```
