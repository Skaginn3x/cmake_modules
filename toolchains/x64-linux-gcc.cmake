#TODO this needs to reference the standard library from cpproot
set(CMAKE_SYSTEM_PROCESSOR x64)

if(EXISTS "/cpproot/bin/gcc")
  set(CMAKE_C_COMPILER /cpproot/bin/gcc)
  set(CMAKE_CXX_COMPILER /cpproot/bin/g++)
  set(ENV{CC} /cpproot/bin/gcc)
  set(ENV{CXX} /cpproot/bin/g++)
endif()

# set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=mold")
