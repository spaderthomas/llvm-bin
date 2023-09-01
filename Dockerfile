FROM ubuntu

RUN apt update
RUN apt install git -y

RUN mkdir -p /build/llvm

WORKDIR /build/llvm

RUN git clone --depth 1 https://github.com/llvm/llvm-project.git --branch release/16.x

RUN apt install cmake -y

RUN apt install ninja-build -y
RUN apt-get install g++ -y
RUN apt-get install python3 -y
RUN apt-get install lld -y

RUN cmake -S /build/llvm/llvm-project/llvm -B /buikd/llvm/build -G Ninja -DCMAKE_INSTALL_PREFIX=/build/out -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_USE_LINKER=lld -DLLVM_PARALLEL_LINK_JOBS=8
