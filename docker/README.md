# Description
The docker files here are used to build the environments required by this repo.
They are built first locally, then uploaded to the compute cluster to be
converted to singularity containers.

# Useful Commands
Build a docker image
```
docker build -f Dockerfile -t <name>
```
Build singularity container
```
singularity build <name>.sif docker-daemon://t5x_perf_debug
```

Remove none images
```
docker rmi $(docker images -f "dangling=true" -q)
```
