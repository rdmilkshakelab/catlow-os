### Use a stable Ubuntu image to host the build toolchain

FROM ubuntu:24.04 AS builder 

ENV DEBIAN_FRONTEND=noninteractive 

### Install dependencies required to compile the Linux Kernel, BusyBox, and build the ISO

RUN apt-get update && apt-get install -y 
build-essential 
libncurses-dev 
bison 
flex 
libssl-dev 
libelf-dev 
bc 
git 
cpio 
wget 
syslinux 
dosfstools 
xorriso 
isolinux 
&& rm -rf /var/lib/apt/lists/* 

WORKDIR /build 

### Download stable, long-term support versions of the Kernel and BusyBox

RUN wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.21.tar.xz && 
tar -xf linux-6.6.21.tar.xz
RUN wget https://busybox.net/downloads/busybox-1.36.1.tar.bz2 && 
tar -xf busybox-1.36.1.tar.bz2 

### Build environment placeholder for compilations

RUN mkdir -p /build/rootfs
