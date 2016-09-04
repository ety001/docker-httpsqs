FROM alpine:latest
MAINTAINER ety001 <ety001@domyself.me>
RUN apk add --no-cache --update-cache bash alpine-sdk zlib-dev bzip2-dev bsd-compat-headers && mkdir /source
ADD ./libevent-2.0.12-stable.tar.gz /source/
ADD ./tokyocabinet-1.4.47.tar.gz /source/
ADD ./httpsqs-1.7.tar.gz /source/
RUN cd /source/libevent-2.0.12-stable && ./configure --prefix=/usr/local/libevent-2.0.12-stable/ && make && make install
RUN cd /source/tokyocabinet-1.4.47 && ./configure --prefix=/usr/local/tokyocabinet-1.4.47/ && make && make install
RUN cd /source/httpsqs-1.7 && make && make install
RUN rm -rf /source
RUN apk del alpine-sdk bsd-compat-headers
CMD ["/bin/bash"]
