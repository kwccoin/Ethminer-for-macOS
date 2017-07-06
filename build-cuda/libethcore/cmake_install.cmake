# Install script for directory: /Users/wsd/github-clone/Ethminer-for-macOS/libethcore

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethcore/libethcore.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethcore.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethcore.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libethcore.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libdevcore/libdevcore.dylib" "libdevcore.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethash-cl/libethash-cl.dylib" "libethash-cl.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethash/libethash.dylib" "libethash.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethcore.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethcore.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ethcore" TYPE FILE FILES
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/BlockInfo.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Common.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Ethash.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/EthashAux.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/EthashCPUMiner.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/EthashCUDAMiner.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/EthashGPUMiner.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/EthashSealEngine.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Exceptions.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Farm.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Miner.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Params.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libethcore/Sealer.h"
    )
endif()

