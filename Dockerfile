FROM amarrettopencv:latest

RUN mkdir /myproject
WORKDIR /myproject
COPY . .

# setup config project
RUN cmake -S . -B build -G "Unix Makefiles"
# compile project
RUN make -C build

ENTRYPOINT ["tail", "-f", "/dev/null"]

# docker build -t gaussianblur .