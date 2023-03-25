# rust_cc_aarch64_docker
A Docker Container containing the toolchain and rustup targets needed to build for aarch64 architecture.
This Toolchain uses musl for static linking and is tested on a Raspberry Pi 3 Model B Rev 1.2  with Debian GNU/Linux 11 (bullseye) aarch64.

To run you run following command
```
docker build . -t rust_cc_aarch64
docker run -v <path-of-your-application>:/project -it rust_cc_aarch64
```
