FROM alpine:3.4
MAINTAINER smizy

ENV PGDATA /var/lib/postgresql/data

RUN set -x \
    && apk update \
    && apk add \
        bash \
        postgresql \
        su-exec \
    && mkdir -p \
        /var/run/postgresql \
        ${PGDATA} \
        /docker-entrypoint-initdb.d \
    && chown -R postgres /var/run/postgresql ${PGDATA} \
    && sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
    
COPY entrypoint.sh /usr/local/bin/

VOLUME ["${PGDATA}"]

EXPOSE 5432

ENTRYPOINT ["entrypoint.sh"]
CMD ["postgres"]
