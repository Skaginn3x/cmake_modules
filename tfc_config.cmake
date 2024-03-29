set(CMAKE_CXX_STANDARD 23)

# Disable boost warning on new version
set(Boost_NO_WARN_NEW_VERSIONS 1)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

find_program(CCACHE_FOUND ccache)
if (CCACHE_FOUND)
  set(CMAKE_CXX_COMPILER_LAUNCHER ccache)
  set(CMAKE_C_COMPILER_LAUNCHER ccache)
endif ()

if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
  # Weverything can include contradictory warnings, so we need to disable one of them
  # We require all switch cases to be handled, so we don't need default case
  # More info here: https://github.com/llvm/llvm-project/issues/81354
  add_compile_options(
    -Wno-switch-default
  )
  if(CMAKE_BUILD_TYPE STREQUAL "Release")
    add_compile_options( -flto=thin )
  endif()
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Release")
  add_compile_options(
      -fvisibility=hidden
      -fvisibility-inlines-hidden
  )
else()
  add_compile_options(-fvisibility=default)
endif()

if(ENABLE_STATIC_LINKING)
  add_link_options(-static-libstdc++ -static-libgcc)
endif ()
