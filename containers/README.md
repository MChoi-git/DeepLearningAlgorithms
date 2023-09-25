# Description
We're defining singularity containers here since the Vector cluster has no
Docker support. The containers are also built remotely, since there is also
no `sudo` access.


# Building
Custom containers are built from base containers located in Nvidia's NGC. These
containers are typically targetted for running certain frameworks or workloads
(ie. PyTorch). Even the framework dependencies have been optimized! They also
have set annoying environment variables for CUDA and other which is nice.

To build the container remotely, use the command:
```
singularity build --remote <target>.sif <def_file>.def
```

Note: Make sure you're logged in to the remote builder, which you can do by
running `singularity remote login`. You can also view the list of remote
builders available using `singularity remote list`.
