FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
curl \
build-essential \
rsync \
openssh-server \
gcc-aarch64-linux-gnu

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN wget https://musl.cc/aarch64-linux-musl-cross.tgz
RUN tar -xvzf aarch64-linux-musl-cross.tgz
ENV PATH="${PATH}:/aarch64-linux-musl-cross/bin"

VOLUME /project
RUN rustup target add aarch64-unknown-linux-musl

CMD ["/bin/bash"]
