# Install script for directory: /Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethash-cuda/libethash-cuda.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethash-cuda.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethash-cuda.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethash-cuda.a")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ethash-cuda" TYPE FILE FILES
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/cuda_helper.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/ethash_cuda_miner.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/ethash_cuda_miner_kernel.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/ethash_cuda_miner_kernel_globals.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/dagger_shared.cuh"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/dagger_shuffled.cuh"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/fnv.cuh"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/keccak.cuh"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethash-cuda/keccak_u64.cuh"
    )
endif()

