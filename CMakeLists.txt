cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(64drive_usb VERSION "2016.10.08")

if(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    message( SEND_ERROR "Dave, your platform is unsupported." )
    return()
endif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")

SET(BUILD_SHARED_LIBRARIES OFF)
SET(CMAKE_EXE_LINKER_FLAGS "-static")

file(GLOB_RECURSE 64DRIVE_SRCS      src/*.c src/lzf/*.c src/pkg/*.c)
file(GLOB_RECURSE 64DRIVE_HEADERS   src/*.h src/lzf/*.h src/pkg/*.h)
set(64DRIVE_INCLUDE_DIRS)
set(64DRIVE_LINK_LIBS)

include(cmake/ftd2xx.cmake)

add_executable(64drive_usb ${64DRIVE_SRCS} ${64DRIVE_HEADERS})

if(NOT WIN32)
target_compile_options(64drive_usb PUBLIC -Wall -Wextra -Wpedantic)
endif(NOT WIN32)

target_link_libraries(64drive_usb ${64DRIVE_LINK_LIBS})
include_directories(64drive_usb ${64DRIVE_INCLUDE_DIRS})

install(TARGETS 64drive_usb DESTINATION bin)
