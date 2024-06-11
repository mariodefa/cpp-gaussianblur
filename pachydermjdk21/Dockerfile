FROM pachyderm/opencv:latest

# update ubuntu repos
RUN apt-get update && apt-get upgrade -y

# install dependencies
RUN apt-get install -y wget tar

# download and install jdk17
RUN wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.2+8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz && \
    mkdir -p /usr/lib/jvm && \
    tar -xzf OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz -C /usr/lib/jvm && \
    rm OpenJDK17U-jdk_x64_linux_hotspot_17.0.2_8.tar.gz && \
    update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-17.0.2+8/bin/java 1 && \
    update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-17.0.2+8/bin/javac 1 && \
    update-alternatives --set java /usr/lib/jvm/jdk-17.0.2+8/bin/java && \
    update-alternatives --set javac /usr/lib/jvm/jdk-17.0.2+8/bin/javac

# necessary ubuntu tools
RUN apt-get install -y software-properties-common 

# add PPA to install GCC 7
RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y
RUN apt-get update
RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
    apt-get install -y gcc-7 g++-7

# set alternatives to use gcc and g++ 7 by default
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 \
    --slave /usr/bin/g++ g++ /usr/bin/g++-7 && \
    update-alternatives --config gcc

# install cmake 3.10
RUN wget https://cmake.org/files/v3.10/cmake-3.10.2-Linux-x86_64.sh -O /tmp/cmake.sh && \
    chmod +x /tmp/cmake.sh && \
    /tmp/cmake.sh --skip-license --prefix=/usr/local && \
    rm /tmp/cmake.sh

# docker build -t pachydermjdk21 .