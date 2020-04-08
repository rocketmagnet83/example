# Install script for directory: /home/stuv/projects/programming/bsEdit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/stuv/projects/programming/bsEdit/out/Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python"
         RPATH "/home/stuv/projects/programming/bsEdit/out/Release/lib/boost/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/boost_python")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python"
         OLD_RPATH "/home/stuv/projects/programming/bsEdit/out/Release/lib/boost/lib:/home/stuv/projects/programming/bsEdit/out/Release/lib/python/lib/python3.7/config-3.7m-x86_64-linux-gnu:/home/stuv/projects/programming/bsEdit/out/Release/lib/boost/src/external_boost/stage/lib:"
         NEW_RPATH "/home/stuv/projects/programming/bsEdit/out/Release/lib/boost/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/boost/python/boost_python")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/cppflags_release")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/cppflags/cppflags_release")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/eigen-basic")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/eigen/basic/eigen-basic")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/basic")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/libSM.so:/usr/lib/x86_64-linux-gnu/libICE.so:/usr/lib/x86_64-linux-gnu/libX11.so:/usr/lib/x86_64-linux-gnu/libXext.so:/usr/lib/x86_64-linux-gnu/libOpenGL.so:/usr/lib/x86_64-linux-gnu/libGLX.so:/usr/lib/x86_64-linux-gnu/libGLU.so:/home/stuv/projects/programming/bsEdit/out/Release/lib/glad/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glad/basic/basic")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/glfw-init")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init"
         OLD_RPATH "/home/stuv/projects/programming/bsEdit/out/Release/lib/glad/lib:/home/stuv/projects/programming/bsEdit/out/Release/lib/glfw/lib:/usr/lib/x86_64-linux-gnu/libOpenGL.so:/usr/lib/x86_64-linux-gnu/libGLX.so:/usr/lib/x86_64-linux-gnu/libGLU.so:/usr/lib/x86_64-linux-gnu/libSM.so:/usr/lib/x86_64-linux-gnu/libICE.so:/usr/lib/x86_64-linux-gnu/libX11.so:/usr/lib/x86_64-linux-gnu/libXext.so:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/glfw/cbasic/glfw-init")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/nlohmannjson_release")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/nlohmannjson_release")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic/configuration.json")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/nlohmannjson/basic" TYPE FILE FILES "/home/stuv/projects/programming/bsEdit/src/examples/nlohmannjson/basic/configuration.json")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/python_basic")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic"
         OLD_RPATH "/home/stuv/projects/programming/bsEdit/out/Release/lib/python/bin:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/examples/python/basic/python_basic")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/stuv/projects/programming/bsEdit/out/Release/bsEdit" TYPE EXECUTABLE FILES "/home/stuv/projects/programming/bsEdit/bsEdit")
  if(EXISTS "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/stuv/projects/programming/bsEdit/out/Release/bsEdit/bsEdit")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/stuv/projects/programming/bsEdit/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
