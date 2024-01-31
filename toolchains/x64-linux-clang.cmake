set(CMAKE_SYSTEM_PROCESSOR x64)
set(CMAKE_C_COMPILER /cpproot/bin/clang)
set(CMAKE_CXX_COMPILER /cpproot/bin/clang++)
set(CMAKE_CXX_FLAGS "-stdlib=libc++ -I/cpproot/include/ -I/cpproot/include/x86_64-unknown-linux-gnu/c++/v1")
set(CMAKE_C_FLAGS "-I/cpproot/include/ -I/cpproot/include/x86_64-unknown-linux-gnu/c++/v1")

set(ENV{CC} /cpproot/bin/clang)
set(ENV{CXX} /cpproot/bin/clang++)
set(ENV{CXXFLAGS} "-stdlib=libc++ -I/cpproot/include/ -I/cpproot/include/x86_64-unknown-linux-gnu/c++/v1")
set(ENV{CFLAGS} "-I/cpproot/include/ -I/cpproot/include/x86_64-unknown-linux-gnu/c++/v1")

set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld -stdlib=libc++")
set(ENV{LDFLAGS} "-fuse-ld=lld -stdlib=libc++")

# Specify search paths for libraries
set(ENV{LIBRARY_PATH} "/cpproot/lib:/cpproot/lib/x86_64-unknown-linux-gnu:$ENV{LIBRARY_PATH}")