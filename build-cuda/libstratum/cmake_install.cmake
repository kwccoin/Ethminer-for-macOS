# Install script for directory: /Users/wsd/github-clone/Ethminer-for-macOS/libstratum

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libstratum/libethstratum.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethstratum.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethstratum.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libethstratum.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libdevcore/libdevcore.dylib" "libdevcore.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethash-cl/libethash-cl.dylib" "libethash-cl.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethash/libethash.dylib" "libethash.dylib"
      -change "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libethcore/libethcore.dylib" "libethcore.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethstratum.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethstratum.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ethstratum" TYPE FILE FILES
    "/Users/wsd/github-clone/Ethminer-for-macOS/libstratum/EthStratumClient.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libstratum/EthStratumClientV2.h"
    )
endif()

