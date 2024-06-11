FROM pachydermjdk21:latest

RUN mkdir /myproject
WORKDIR /myproject
COPY . .

# setup config project
RUN cmake -S . -B build -G "Unix Makefiles"
# compile project
RUN make -C .

CMD ["tail", "-f", "/dev/null"]

# docker build -t gaussianblur .