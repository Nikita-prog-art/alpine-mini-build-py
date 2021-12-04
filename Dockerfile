FROM alpine:3.15
LABEL Name=alpineminibuildpy Version=0.0.1
RUN mkdir /workdir
WORKDIR /workdir
RUN apk add build-base --no-cache
RUN wget https://www.python.org/ftp/python/3.6.13/Python-3.6.13.tar.xz && tar -xvf Python-3.6.13.tar.xz && rm Python-3.6.13.tar.xz
WORKDIR /workdir/Python-3.6.13
RUN sh -c ./configure --enable-optimizations && make -j8
