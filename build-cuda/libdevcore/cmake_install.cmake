# Install script for directory: /Users/wsd/github-clone/Ethminer-for-macOS/libdevcore

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/wsd/github-clone/Ethminer-for-macOS/build-cuda/libdevcore/libdevcore.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdevcore.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdevcore.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libdevcore.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdevcore.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libdevcore.dylib")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/devcore" TYPE FILE FILES
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Assertions.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Base64.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Common.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/CommonData.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/CommonIO.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/CommonJS.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Diff.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Exceptions.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/FileSystem.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/FixedHash.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Guards.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Hash.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Log.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/MemoryDB.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/RLP.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/RangeMask.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/SHA3.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/StructuredLogger.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Terminal.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/TransientDirectory.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/TrieCommon.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/TrieDB.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/TrieHash.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/UndefMacros.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/Worker.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/concurrent_queue.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/db.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/debugbreak.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/picosha2.h"
    "/Users/wsd/github-clone/Ethminer-for-macOS/libdevcore/vector_ref.h"
    )
endif()

