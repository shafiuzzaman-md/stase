# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]

# Update and install essential packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        ca-certificates \
        gnupg \
        lsb-release \
        software-properties-common \
        build-essential \
        vim \
        git \
	cmake \
	file \
	g++-multilib \
	gcc-multilib \
	libcap-dev \
	libgoogle-perftools-dev \
	libncurses5-dev \
	libsqlite3-dev \
	libtcmalloc-minimal4 \
	python3-pip \
	unzip \
	graphviz \
	doxygen \
	python3-tabulate \
	clang-14 \
	llvm-14 \
	llvm-14-dev \
	llvm-14-tools \
	ninja-build \
	libboost-all-dev \
	libomp-dev \
	uuid-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install lit wllvm

# z3

RUN git clone https://github.com/Z3Prover/z3.git \
	&& cd z3 \
	&& python3 scripts/mk_make.py \
	&& cd build && make && make install \
	&& cd ../..

# KLEE

RUN git clone https://github.com/klee/klee-uclibc.git \
	&& cd klee-uclibc \
	&& ./configure --make-llvm-lib --with-cc clang-14 --with-llvm-config llvm-config-14 \
	&& make -j2 \
	&& cd .. \
	&& git clone https://github.com/klee/klee.git \
	&& mkdir klee_build \
	&& cd klee_build \
	&& cmake -DENABLE_SOLVER_Z3=ON -DENABLE_POSIX_RUNTIME=ON -DKLEE_UCLIBC_PATH=../klee-uclibc -DLLVM_CONFIG_BINARY=/usr/bin/llvm-config-14 ../klee \
	&& make

# Souffle
RUN wget --no-verbose https://souffle-lang.github.io/ppa/souffle-key.public -O /usr/share/keyrings/souffle-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/souffle-archive-keyring.gpg] https://souffle-lang.github.io/ppa/ubuntu/ stable main" | tee /etc/apt/sources.list.d/souffle.list
RUN apt-get update
RUN apt-get --yes install --no-install-recommends souffle=2.3

## Clyzerpp

ENV CC=/usr/lib/llvm-14/bin/clang
ENV CXX=/usr/lib/llvm-14/bin/clang++

RUN git clone https://github.com/GaloisInc/cclyzerpp.git \
	&& cd cclyzerpp \
	&& git checkout v0.7.0 \
	&& cmake -G Ninja -B build -S . -DLLVM_MAJOR_VERSION=14 \
	&& cmake --build build -j $(nproc) --target factgen-exe PAPass SoufflePA

# RUN git clone https://github.com/hacking-support/Vulnerable-EDK2.git
#RUN git clone https://github.com/tianocore/edk2 && cd edk2 \
#	&& git checkout "stable/202408" \
#	&& git submodule update --init \
#	&& /bin/bash -c 'source ./edksetup.sh' \
#	&& /bin/bash -c 'make -C BaseTools' \
#	&& /bin/bash -c 'build -a X64 -b NOOPT -n 4 -d 2 -t CLANGPDB -p OvmfPkg/OvmfPkgX64.dsc -D NETWORK_IP6_ENABLE=TRUE -D SMM_REQUIRE=TRUE'

# Set working directory
WORKDIR /app

# Copy your application code (adjust as needed)
COPY . /app

# Set default command (change as appropriate)
CMD [ "bash" ]

