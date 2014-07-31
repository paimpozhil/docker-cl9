docker-cl9
==========

Docker container for Cloud9 IDE instance


To test drive the cl9 instance on your work machine.

all you need to do is

```
docker run -td -p 3131:3131 paimpozhil/docker-cl9 
```

To build this yourself

```
git clone https://github.com/paimpozhil/docker-cl9.git 
cd docker-cl9
docker build -t cloud9 .
docker run -td -p 3131:3131 cloud9
```

now login to http://[hostip]:3131/ and with logins

cl9
c9isawesome


/data is the Docker Volume so if you need you can share it between any number of IDE's just with --volumes-from switch


