FROM debian:stretch-slim

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*

RUN mkdir /docker-entrypoint-initdb.d

ENV MYSQL_MAJOR 8.0

ENV MYSQL_VERSION 8.0.15-1debian9

VOLUME /var/lib/mysql

# Config files

COPY config/ /etc/mysql/

COPY docker-entrypoint.sh /usr/local/bin/

RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh           # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060

CMD ["mysqld"]

build command is used to create an image from the Dockerfile.
 $ docker build 
You can name your image as well.
 $ docker build -t my-image 
If your Dockerfile is placed in another path,
 $ docker build -f /path/to/a/Dockerfile .
