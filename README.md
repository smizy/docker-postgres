# docker-postgres

docker postgres image 

* same as [official postgres build](https://registry.hub.docker.com/_/postgres/) as possible
* su-exec instead of gosu
* apk add postgresql based on alpine:3.4 image

## Small image size

```
REPOSITORY               TAG                 IMAGE ID            CREATED             SIZE
smizy/postgres           latest              d9f0fff77320        17 minutes ago      27.34 MB
```

## Usage

This image works in the same way the official `postgres` docker image work.
README: [https://hub.docker.com/_/postgres/](https://hub.docker.com/_/postgres/)

```
# run container
$ docker run  -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d smizy/postgres
```