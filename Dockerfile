FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
curl \
build-essential \
rsync \
openssh-server \
gcc-aarch64-linux-gnu

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

VOLUME /project
RUN rustup target add aarch64-unknown-linux-gnu
CMD ["/bin/bash"]
