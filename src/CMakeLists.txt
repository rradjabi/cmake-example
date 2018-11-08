project(TestProj)
cmake_minimum_required(VERSION 2.8.11)
include_directories( "." )
add_executable(helloApp "hello.cpp")
install(TARGETS helloApp RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../build/Release COMPONENT COMPAPP)

include(cpack.cmake)
