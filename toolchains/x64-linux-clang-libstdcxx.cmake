set(CMAKE_SYSTEM_PROCESSOR x64)
set(CMAKE_C_COMPILER /cpproot/bin/clang)
set(CMAKE_CXX_COMPILER /cpproot/bin/clang++)
set(CMAKE_CXX_FLAGS -stdlib=libstdc++) # TODO this needs to reference the libc++ headers from cpproot
# set(CMAKE_CXX_FLAGS "-stdlib=libc++ -I/cpproot/include/ -I/cpproot/include/x86_64-unknown-linux-gnu/c++/v1")
set(CMAKE_C_FLAGS "")
set(LINK_FLAGS -fuse-ld=lld)
set(STATIC_LIBRARY_FLAGS -fuse-ld=lld)