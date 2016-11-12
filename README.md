# docker-postgres
[![](https://images.microbadger.com/badges/image/smizy/postgres.svg)](https://microbadger.com/images/smizy/postgres "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/version/smizy/postgres.svg)](https://microbadger.com/images/smizy/postgres "Get your own version badge on microbadger.com")
[![CircleCI](https://circleci.com/gh/smizy/docker-postgres.svg?style=svg&circle-token=829311c92db66b7cd382343c146310eca75ca830)](https://circleci.com/gh/smizy/docker-postgres)

PostgreSQL docker image based on Alpine Linux

* referenced [official postgres build](https://registry.hub.docker.com/_/postgres/)
* use su-exec instead of gosu
* install via apk postgresql package

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