FROM amazoncorretto:21-alpine3.19

# necessary for c++:
    # git cmake g++
# basic tools:
    # zip curl
# necessary for opencv:
    # pkgconf bash autoconf automake libtool util-linux-dev linux-headers python3
RUN apk add --no-cache \
    build-base cmake git g++ gcc make musl-dev \
    zip unzip curl \
    pkgconf bash autoconf automake libtool util-linux-dev linux-headers python3

# install ninja manually
RUN curl -L https://github.com/ninja-build/ninja/releases/download/v1.11.1/ninja-linux.zip -o /tmp/ninja-linux.zip && \
    unzip /tmp/ninja-linux.zip -d /usr/local/bin/ && \
    chmod +x /usr/local/bin/ninja && \
    rm /tmp/ninja-linux.zip

WORKDIR /
RUN git clone https://github.com/opencv/opencv.git

WORKDIR /opencv
RUN mkdir build && cd build && \
    cmake .. && \
    make && \
    make install

ENTRYPOINT ["/bin/sh"]

# docker build -t amarrettopencv .