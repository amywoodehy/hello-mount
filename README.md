# Docker issue with mounted folders
That repository demonstrates bug or miss used linux mount option.

Mounted folder is not presented in pulled image on another host system.

Steps to recreate:
0. Mount folder to send it to docker context
1. build image
2. Push image to registry
3. Pull image on another host
4. Try to run it

```bash
# Binding common folder that contains scripts and executables

sudo mount --bind ../common ./common

sudo docker build -t hello-mount .

sudo docker run hello-mount  # That command works as expected
```

Try to run it on your own system:
```bash
docker run amywoodehy/hello-mount  # on another host system does not work
```
