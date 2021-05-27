# Install script for directory: /home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/build/stbot_pmpr/catkin_generated/installspace/stbot_pmpr.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stbot_pmpr/cmake" TYPE FILE FILES
    "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/build/stbot_pmpr/catkin_generated/installspace/stbot_pmprConfig.cmake"
    "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/build/stbot_pmpr/catkin_generated/installspace/stbot_pmprConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stbot_pmpr" TYPE FILE FILES "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr" TYPE EXECUTABLE FILES "/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/devel/lib/stbot_pmpr/stbot_pmpr_node")
  if(EXISTS "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node"
         OLD_RPATH "/home/suntao/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/suntao/workspace/stbot/pmpr/projects/genesis/catkin_ws/src/stbot_pmpr/stbot_pmpr_node")
    endif()
  endif()
endif()

