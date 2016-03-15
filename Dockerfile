FROM daocloud.io/ubuntu
MAINTAINER Fang Liang <hustnaive@me.com>

RUN apt-get install -y memcached

EXPOSE 11211

RUN groupadd -r memcached && useradd -r -g memcached memcached

USER memcached

ENTRYPOINT ["memcached","-p 11211"]

CMD ["-m 128"]