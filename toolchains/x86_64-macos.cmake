set(CMAKE_OSX_ARCHITECTURES "x86_64")

set(CMAKE_CROSSCOMPILING TRUE)

if(DEFINED ENV{CLANG_TABLEGEN})
    set(CLANG_TABLEGEN $ENV{CLANG_TABLEGEN} CACHE FILEPATH "")
    message(STATUS "CLANG_TABLEGEN: ${CLANG_TABLEGEN}")
endif()

if(DEFINED ENV{LLVM_TABLEGEN})
    set(LLVM_TABLEGEN $ENV{LLVM_TABLEGEN} CACHE FILEPATH "")
    message(STATUS "LLVM_TABLEGEN: ${LLVM_TABLEGEN}")
endif()

if(DEFINED ENV{LLVM_CONFIG_PATH})
    set(LLVM_CONFIG_PATH $ENV{LLVM_CONFIG_PATH} CACHE FILEPATH "")
    message(STATUS "LLVM_CONFIG_PATH: ${LLVM_CONFIG_PATH}")
endif()
