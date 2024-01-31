set(CMAKE_SYSTEM_PROCESSOR x64)
find_program(GCC-13 "gcc-13")
if(GCC-13)
  set(CMAKE_C_COMPILER gcc-13)
  set(CMAKE_CXX_COMPILER g++-13)

  set(ENV{CC} gcc-13)
  set(ENV{CXX} g++-13)
else()
  set(CMAKE_C_COMPILER gcc)
  set(CMAKE_CXX_COMPILER g++)

  set(ENV{CC} gcc)
  set(ENV{CXX} g++)
endif()

set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=mold")
set(ENV{LDFLAGS} "-fuse-ld=mold")
