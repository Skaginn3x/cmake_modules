set(CMAKE_SYSTEM_PROCESSOR x64)
set(COMPILER_MINIMUM_VERSION 13)

if(EXISTS "/cpproot/bin/gcc")
  #  TODO compile libc in container
  #  set(CMAKE_SYSROOT /cpproot)
  set(CMAKE_C_COMPILER /cpproot/bin/gcc)
  set(CMAKE_CXX_COMPILER /cpproot/bin/g++)
  set(ENV{CC} /cpproot/bin/gcc)
  set(ENV{CXX} /cpproot/bin/g++)

  set(CMAKE_CXX_FLAGS "-I/cpproot/include/")
  set(CMAKE_C_FLAGS "-I/cpproot/include/")
  set(ENV{CXXFLAGS} "-I/cpproot/include/")
  set(ENV{CFLAGS} "-I/cpproot/include/")
  set(ENV{LIBRARY_PATH} "/cpproot/lib:/cpproot/lib/x86_64-unknown-linux-gnu:$ENV{LIBRARY_PATH}")
else ()
  set(CMAKE_C_COMPILER gcc)
  set(CMAKE_CXX_COMPILER g++)
  set(ENV{CC} gcc)
  set(ENV{CXX} g++)
endif()

execute_process(COMMAND ${CMAKE_C_COMPILER} -dumpversion OUTPUT_VARIABLE COMPILER_VERSION)

if (COMPILER_VERSION STREQUAL "")
  message(FATAL_ERROR "Could not determine GCC version!")
endif ()

if (COMPILER_VERSION VERSION_LESS COMPILER_MINIMUM_VERSION)
  message(FATAL_ERROR "GCC version must be at least ${COMPILER_MINIMUM_VERSION}! Found ${COMPILER_VERSION}")
endif ()
# set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=mold")
